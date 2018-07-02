package io.github.atrosinenko.fpga.common

import chisel3._

class SimpleButtonController(clickThreshold: Int, pressThreshold: Int, period: Int, pressedIsHigh: Boolean) extends Module {
  val io = IO(new Bundle {
    val buttonInput = Input(Bool())

    val click     = Output(Bool())
    val longPress = Output(Bool())
  })

  private val cycleCounter   = RegInit(0.asUInt(32.W))
  private val pressedCounter = RegInit(0.asUInt(32.W))

  io.click := false.B
  io.longPress := false.B
  when (cycleCounter === 0.asUInt) {
    when (pressedCounter >= pressThreshold.asUInt) {
      io.longPress := true.B
    }.elsewhen (pressedCounter >= clickThreshold.asUInt) {
      io.click := true.B
    }
    cycleCounter := period.asUInt
    pressedCounter := 0.asUInt
  } otherwise {
    cycleCounter := cycleCounter - 1.asUInt
    when (io.buttonInput === pressedIsHigh.B) {
      pressedCounter := pressedCounter + 1.asUInt
    }
  }
}
