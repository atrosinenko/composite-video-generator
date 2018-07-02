package io.github.atrosinenko.fpga.tv

import chisel3._
import chisel3.core.withReset
import io.github.atrosinenko.fpga.common.OneShotPulseGenerator

object BWGenerator {
  val FrontPorchUs = 1.65
  val ScanLineHSyncStartUs = 4.7 + FrontPorchUs
  val ScanLineHSyncEndUs   = 12.0
  val TotalScanLineLengthUs = 64.0
  val xDivisor = 4

  val VSyncStart = Seq(
    2, 30, 2, 30,  // 623 (scanLineNr = 622) / 311 (310)
    2, 30, 2, 30   // 624 / 312
  )

  val VSyncEnd = Seq(
    30, 2, 30, 2,  // 2 / 314
    30, 2, 30, 2,  // 3 / 315
    2, 30, 2, 30,  // 4 / 316
    2, 30, 2, 30   // 5 (4) / 317 (316)
  )

  val VSync1: Seq[Int] = VSyncStart ++ Seq(
    2, 30, 2, 30,  // 625 (624)
    30, 2, 30, 2   // 1 (0)
  ) ++ VSyncEnd ++ (5 to 22).flatMap(_ => Seq(4, 60))

  val VSync2: Seq[Int] = VSyncStart ++ Seq(
    2, 30, 30, 2   // 313
  ) ++ VSyncEnd ++ (317 to 334).flatMap(_ => Seq(4, 60))

  val BlackMv = 300.asSInt(12.W)

  val FirstHalf = (23, 310)
  val SecondHalf = (335, 622)
  val TotalScanLineCount = 625
}

class BWGenerator(clocksPerUs: Int) extends Module {
  import BWGenerator._

  val io = IO(new Bundle {
    val L = Input(SInt(9.W))

    val x = Output(UInt(10.W))
    val y = Output(UInt(10.W))
    val inScanLine = Output(Bool())
    val inPorch    = Output(Bool())
    val inFirstHalf = Output(Bool())

    val millivolts = Output(SInt(16.W))
  })

  private val scanLineNr = RegInit(0.asUInt(10.W))
  private val inScanLineCounter = RegInit(0.asUInt(16.W))
  assert((TotalScanLineLengthUs - ScanLineHSyncEndUs) * clocksPerUs < 1024 * xDivisor)
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
  private val regX, regY = RegInit(0.asUInt(10.W))
  regX := Mux(
    io.inScanLine,
    inScanLineCounter - (ScanLineHSyncEndUs * clocksPerUs).toInt.asUInt,
    0.asUInt
  ) / 4.asUInt
  regY := Mux(
    io.inScanLine,
    Mux(
      inFirstHalf,
      ((scanLineNr - FirstHalf ._1.asUInt) << 1).asUInt,
      ((scanLineNr - SecondHalf._1.asUInt) << 1).asUInt + 1.asUInt
    ),
    0.asUInt
  )
  io.x := regX
  io.y := regY
  io.inFirstHalf := inFirstHalf

  io.inPorch := false.B
  when (fieldIActive) {
    io.millivolts := Mux(fieldIGenerator .io.signal, BlackMv, 0.asSInt)
  }.elsewhen (fieldIIActive) {
    io.millivolts := Mux(fieldIIGenerator.io.signal, BlackMv, 0.asSInt)
  }.otherwise {
    when (inScanLineCounter < (FrontPorchUs * clocksPerUs).toInt.asUInt) {
      io.millivolts := BlackMv
    }.elsewhen (inScanLineCounter < (ScanLineHSyncStartUs * clocksPerUs).toInt.asUInt) {
      io.millivolts := 0.asSInt
    }.elsewhen (inScanLineCounter < (ScanLineHSyncEndUs * clocksPerUs).toInt.asUInt) {
      io.millivolts := BlackMv
      io.inPorch := true.B
    }.otherwise {
      io.millivolts := (BlackMv + (io.L).asSInt + 30.asSInt)
    }
  }
}