package io.github.atrosinenko.fpga.common

import chisel3._

class PWM(width: Int) extends Module {
  val io = IO(new Bundle {
    val numerator   = Input(UInt(width.W))
    val denominator = Input(UInt(width.W))
    val pulse = Output(Bool())
  })

  private val counter = RegInit(0.asUInt(width.W))
  private val nextValue = counter + io.numerator
  io.pulse := nextValue >= io.denominator // >= so n/n is constant True
  counter := Mux(io.pulse, nextValue - io.denominator, nextValue)
}
