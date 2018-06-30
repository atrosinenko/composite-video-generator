package io.github.atrosinenko.fpga.tv

import chisel3._

class PalGenerator(clocksPerUs: Int) extends Module {
  val io = IO(new Bundle {
    val red   = Input(UInt(8.W))
    val green = Input(UInt(8.W))
    val blue  = Input(UInt(8.W))

    val x = Output(UInt(10.W))
    val y = Output(UInt(10.W))

    val millivolts = Output(UInt(12.W))
  })

  val bw    = Module(new BWGenerator(clocksPerUs))
  val color = Module(new PalColorCalculator)

  io.red   <> color.io.red
  io.green <> color.io.green
  io.blue  <> color.io.blue

  bw.io.L <> color.io.L
  bw.io.inScanLine <> color.io.scanLine
  bw.io.x <> io.x
  bw.io.y <> io.y


  io.millivolts := bw.io.millivolts + color.io.millivolts
}