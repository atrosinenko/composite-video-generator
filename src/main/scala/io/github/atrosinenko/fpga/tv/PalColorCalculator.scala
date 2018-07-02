package io.github.atrosinenko.fpga.tv

import chisel3._
import chisel3.util._

object PalColorCalculator {
  val ColorCarrierFrequencyMHz = 4.434
  val LogTableSizeToMHz = 2

  val PreburstUs = 0.9
  val BurstCycles = 10.0
}

class PalColorCalculator(clocksPerUs: Int) extends Module {
  import PalColorCalculator._

  val io = IO(new Bundle {
    val red   = Input(UInt(8.W))
    val green = Input(UInt(8.W))
    val blue  = Input(UInt(8.W))
    val inPorch = Input(Bool())
    val inFirstHalf = Input(Bool())
    val inScanLine = Input(Bool())
    val y = Input(UInt(10.W))

    val S = Output(SInt(9.W))

    val millivolts = Output(SInt(11.W))
  })

  private val regS = RegInit(0.asSInt(9.W))

  // UInt -> SInt conversion does not preserve value for "large" numbers, so widen ourselves first
  private val R = (io.red   + 0.asUInt(9.W)).asSInt
  private val G = (io.green + 0.asUInt(9.W)).asSInt
  private val B = (io.blue  + 0.asUInt(9.W)).asSInt

  private val regMv = RegInit(0.asSInt(11.W))

  private val Y = (io.red * 222.asUInt + io.green * 707.asUInt + io.blue * 71.asUInt) / 1024.asUInt
  io.S := regS

  val U = (io.red.asSInt * (-147).asSInt + io.green.asSInt * (-289).asSInt + io.blue.asSInt *   436 .asSInt) / 1024.asSInt
  val V = (io.red.asSInt *   615 .asSInt + io.green.asSInt * (-515).asSInt + io.blue.asSInt * (-100).asSInt) / 1024.asSInt

  private val preburstCounter = RegInit(0.asUInt(10.W))
  private val burstCounter = RegInit(0.asUInt(10.W))

  private val log2mhz = log2Ceil(clocksPerUs)
  assert((1 << log2mhz) == clocksPerUs)
  private val TableSize = clocksPerUs << LogTableSizeToMHz
  private val sineTable   = VecInit((0 until TableSize).map(i => (Math.sin(2.0 * Math.PI * i / TableSize) * 256).toInt.asSInt))
  private val cosineTable = VecInit((0 until TableSize).map(i => (Math.cos(2.0 * Math.PI * i / TableSize) * 256).toInt.asSInt))

  private val counter = RegInit(0.asUInt((log2mhz + LogTableSizeToMHz).W))
  private val tableIndex = ((ColorCarrierFrequencyMHz * 1024).toInt.asUInt * counter / (1024 * clocksPerUs / TableSize).asUInt) % TableSize.asUInt

  private val phaseFlip = RegInit(false.B)

  regMv := 0.asSInt
  when (io.y === 1.asUInt && io.inScanLine) {
    phaseFlip := false.B
    counter := 0.asUInt
  } otherwise {
    counter := counter + 1.asUInt
  }
  when (io.inPorch) {
    when (preburstCounter === 0.asUInt) {
      phaseFlip := !phaseFlip
      counter := 0.asUInt
    }
    when (preburstCounter < (PreburstUs * clocksPerUs).toInt.asUInt) {
      preburstCounter := preburstCounter + 1.asUInt
      burstCounter := 0.asUInt
    } otherwise {
      when (burstCounter < (BurstCycles * clocksPerUs / ColorCarrierFrequencyMHz).toInt.asUInt) {
        regMv := Mux(phaseFlip,
          /*cosineTable(tableIndex - (TableSize / 4).asUInt) +*/ sineTable(tableIndex + (TableSize / 8).asUInt),
          /*cosineTable(tableIndex + (TableSize / 4).asUInt) +*/ sineTable(tableIndex - (TableSize / 8).asUInt)
        ) / 2.asSInt
        burstCounter := burstCounter + 1.asUInt
      }
    }
  }.otherwise {
    preburstCounter := 0.asUInt

    when (io.inScanLine) {
      regS := Mux(
        phaseFlip,
        Y.asSInt + cosineTable(tableIndex) * U / 256.asSInt + sineTable(tableIndex) * V / 256.asSInt,
        Y.asSInt + cosineTable(tableIndex) * U / 256.asSInt - sineTable(tableIndex) * V / 256.asSInt
      )
    }
  }
  io.millivolts := regMv
}
