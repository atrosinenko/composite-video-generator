package io.github.atrosinenko.fpga.tv

import chisel3._

class PalColorCalculator extends Module {
  val io = IO(new Bundle {
    val red   = Input(UInt(8.W))
    val green = Input(UInt(8.W))
    val blue  = Input(UInt(8.W))
    val scanLine = Input(Bool())

    val L = Output(UInt(8.W))

    val millivolts = Output(UInt(12.W))
  })

  // Stub -- B/W for now
  io.L := (0.asUInt(10.W) + io.red + io.green + io.blue) / 4.asUInt
  io.millivolts := 0.asUInt
}
