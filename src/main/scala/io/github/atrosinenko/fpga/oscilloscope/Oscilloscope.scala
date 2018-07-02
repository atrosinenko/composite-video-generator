package io.github.atrosinenko.fpga.oscilloscope

import chisel3._

class Oscilloscope(clocksPerUs: Int, inputWidth: Int, windowPixelWidth: Int, windowPixelHeight: Int) extends Module {
  val io = IO(new Bundle {
    val signal = Input(UInt(inputWidth.W))

    val visualOffset = Input(UInt(16.W))
    val start = Input(Bool())

    val x = Input(UInt(10.W))
    val y = Input(UInt(10.W))

    val output = Output(Bool())
  })

  private val mem = SyncReadMem(1 << 15, UInt(inputWidth.W))
  private val physicalPixel = RegInit(0.asUInt(32.W))

  when (io.start) {
    physicalPixel := 0.asUInt
  }
  when (physicalPixel < mem.length.asUInt) {
    mem.write(physicalPixel, io.signal)
    physicalPixel := physicalPixel + 1.asUInt
  }

  private val shiftedX = io.x + io.visualOffset
  private val currentValue = RegInit(0.asUInt(inputWidth.W))
  currentValue :=
    ((1 << inputWidth) - 1).asUInt -
      mem.read(
        Mux(shiftedX < mem.length.asUInt, shiftedX, (mem.length - 1).asUInt)
      )

  when (io.x > windowPixelWidth.asUInt || io.y > windowPixelHeight.asUInt) {
    // draw 1us-scale black-white bar
    io.output := !(
      io.y > (windowPixelHeight + 10).asUInt && io.y < (windowPixelHeight + 20).asUInt &&
        (io.x / clocksPerUs.asUInt)(0)
      )
  } otherwise {
    // draw signal curve
    // signal / 2^inputWidth ~ y / windowPixelHeight
    // signal * windowPixelHeight ~ y * 2^inputWidth
    io.output :=
      (currentValue * windowPixelHeight.asUInt >= ((io.y - 5.asUInt) << inputWidth).asUInt) &&
      (currentValue * windowPixelHeight.asUInt <= ((io.y + 5.asUInt) << inputWidth).asUInt)
  }
}
