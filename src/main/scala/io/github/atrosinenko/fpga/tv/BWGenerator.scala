package io.github.atrosinenko.fpga.tv

import chisel3._
import chisel3.core.withReset
import io.github.atrosinenko.fpga.common.OneShotPulseGenerator

object BWGenerator {
  val ScanLineHSyncStartUs = 4.0
  val ScanLineHSyncEndUs   = 12.0
  val TotalScanLineLengthUs = 64.0

  val VSyncStart = Seq(
    2, 30, 2, 30,  // 623 / 311
    2, 30, 2, 30   // 624 / 312
  )

  val VSyncEnd = Seq(
    30, 2, 30, 2,  // 2 / 314
    30, 2, 30, 2,  // 3 / 315
    2, 30, 2, 30,  // 4 / 316
    2, 30, 2, 30   // 5 / 317
  )

  val VSync1: Seq[Int] = VSyncStart ++ Seq(
    2, 30, 2, 30,  // 625
    30, 2, 30, 2   // 1
  ) ++ VSyncEnd ++ (6 to 23).flatMap(_ => Seq(4, 60))

  val VSync2: Seq[Int] = VSyncStart ++ Seq(
    2, 30, 30, 2   // 313
  ) ++ VSyncEnd ++ (318 to 335).flatMap(_ => Seq(4, 60))

  val BlackMv = 300.asUInt(12.W)
  val WhiteMv = 1000.asUInt(12.W)

  val FirstHalf = (24, 311)
  val SecondHalf = (336, 623)
  val TotalScanLineCount = 625
}

class BWGenerator(clocksPerUs: Int) extends Module {
  import BWGenerator._

  val io = IO(new Bundle {
    val L = Input(UInt(8.W))

    val x = Output(UInt(10.W))
    val y = Output(UInt(10.W))
    val inScanLine = Output(Bool())

    val millivolts = Output(UInt(12.W))
  })

  private val scanLineNr = RegInit(0.asUInt(10.W))
  private val inScanLineCounter = RegInit(0.asUInt(16.W))
  when (inScanLineCounter === (TotalScanLineLengthUs * clocksPerUs - 1).toInt.asUInt) {
    inScanLineCounter := 0.asUInt
    when(scanLineNr === (TotalScanLineCount - 1).asUInt) {
      scanLineNr := 0.asUInt
    } otherwise {
      scanLineNr := scanLineNr + 1.asUInt
    }
  } otherwise {
    inScanLineCounter := inScanLineCounter + 1.asUInt
  }


  private val fieldIActive = SecondHalf._2.asUInt <= scanLineNr || scanLineNr < FirstHalf._1.asUInt
  private val fieldIGenerator = withReset(!fieldIActive) {
    Module(new OneShotPulseGenerator(VSync1.map(_ * clocksPerUs), initial = false))
  }
  private val fieldIIActive = FirstHalf._2.asUInt <= scanLineNr && scanLineNr < SecondHalf._1.asUInt
  private val fieldIIGenerator = withReset(!fieldIIActive) {
    Module(new OneShotPulseGenerator(VSync2.map(_ * clocksPerUs), initial = false))
  }


  private val inFirstHalf  = FirstHalf ._1.asUInt <= scanLineNr && scanLineNr < FirstHalf ._2.asUInt
  private val inSecondHalf = SecondHalf._1.asUInt <= scanLineNr && scanLineNr < SecondHalf._2.asUInt
  io.inScanLine := (inFirstHalf || inSecondHalf) && ((ScanLineHSyncEndUs * clocksPerUs).toInt.asUInt <= inScanLineCounter)

  io.x := Mux(
    io.inScanLine,
    inScanLineCounter - (ScanLineHSyncEndUs * clocksPerUs).toInt.asUInt,
    0.asUInt
  ) / 4.asUInt
  io.y := Mux(
    io.inScanLine,
    Mux(
      inFirstHalf,
      ((scanLineNr - FirstHalf ._1.asUInt) << 1).asUInt,
      ((scanLineNr - SecondHalf._1.asUInt) << 1).asUInt + 1.asUInt
    ),
    0.asUInt
  )

  when (fieldIActive) {
    io.millivolts := Mux(fieldIGenerator .io.signal, BlackMv, 0.asUInt)
  }.elsewhen (fieldIIActive) {
    io.millivolts := Mux(fieldIIGenerator.io.signal, BlackMv, 0.asUInt)
  }.otherwise {
    when (inScanLineCounter < (ScanLineHSyncStartUs * clocksPerUs).toInt.asUInt) {
      io.millivolts := 0.asUInt
    }.elsewhen (inScanLineCounter < (ScanLineHSyncEndUs * clocksPerUs).toInt.asUInt) {
      io.millivolts := BlackMv
    }.otherwise {
      io.millivolts := (BlackMv + (io.L << 1).asUInt).asUInt
    }
  }
}