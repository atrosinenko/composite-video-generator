package io.github.atrosinenko.fpga.tv

import chisel3._

class TestColorImageGenerator(width: Int, height: Int) extends Module {
  val io = IO(new Bundle {
    val red   = Output(UInt(8.W))
    val green = Output(UInt(8.W))
    val blue  = Output(UInt(8.W))

    val x = Input(UInt(10.W))
    val y = Input(UInt(10.W))
  })

  io.red   := Mux((io.x / 32.asUInt + io.y / 32.asUInt)(0), 200.asUInt, 0.asUInt)
  io.green := Mux((io.x / 32.asUInt + io.y / 32.asUInt)(0), 200.asUInt, 0.asUInt)
  io.blue  := Mux((io.x / 32.asUInt + io.y / 32.asUInt)(0), 0.asUInt, 0.asUInt)
}
