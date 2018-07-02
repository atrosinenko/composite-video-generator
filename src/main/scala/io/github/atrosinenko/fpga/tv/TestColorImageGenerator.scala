package io.github.atrosinenko.fpga.tv

import chisel3._
import io.github.atrosinenko.fpga.common.SimpleButtonController
import io.github.atrosinenko.fpga.oscilloscope.{Oscilloscope, OscilloscopeController}

class TestColorImageGenerator(mhz: Int, width: Int, height: Int) extends Module {
  val io = IO(new Bundle {
    val signal1 = Input(UInt(8.W))
    val signal2 = Input(UInt(8.W))

    val button1 = Input(Bool())
    val button2 = Input(Bool())
    val leds = Output(UInt(4.W))

    val red   = Output(UInt(8.W))
    val green = Output(UInt(8.W))
    val blue  = Output(UInt(8.W))

    val x = Input(UInt(10.W))
    val y = Input(UInt(10.W))
  })

  private val oscilloscopeController = Module(
    new OscilloscopeController(
      512,
      () => new SimpleButtonController((0.1 * mhz * 1e6).toInt, (0.2 * mhz * 1e6).toInt, (0.3 * mhz * 1.23e6).toInt, false)
    )
  )
  private val oscilloscope = Module ( new Oscilloscope(clocksPerUs = mhz, inputWidth = 8, windowPixelWidth = 512, windowPixelHeight = 400))

  oscilloscopeController.io.button1 <> io.button1
  oscilloscopeController.io.button2 <> io.button2
  oscilloscopeController.io.leds <> io.leds
  oscilloscope.io.signal := Mux(io.leds(0), io.signal1, io.signal2)
  oscilloscope.io.start  <> oscilloscopeController.io.start
  oscilloscope.io.visualOffset <> oscilloscopeController.io.visibleOffset
  oscilloscope.io.x <> io.x
  oscilloscope.io.y <> io.y

  private val t = oscilloscope.io.output
  io.red   := Mux(t, 0.asUInt, 0.asUInt)
  io.green := Mux(t, 0.asUInt, 200.asUInt)
  io.blue  := Mux(t, 0.asUInt, 0.asUInt)
}
