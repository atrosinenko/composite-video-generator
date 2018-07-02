package io.github.atrosinenko.fpga.oscilloscope

import chisel3._
import io.github.atrosinenko.fpga.common.SimpleButtonController

class OscilloscopeController(visibleWidth: Int, createButtonController: () => SimpleButtonController) extends Module {
  val io = IO(new Bundle {
    val button1 = Input(Bool())
    val button2 = Input(Bool())

    val visibleOffset = Output(UInt(16.W))
    val start = Output(Bool())

    val leds = Output(UInt(4.W))
  })

  val controller1 = Module(createButtonController())
  val controller2 = Module(createButtonController())

  controller1.io.buttonInput <> io.button1
  controller2.io.buttonInput <> io.button2

  private val offset = RegInit(0.asUInt(16.W))
  private val leds = RegInit(0.asUInt(4.W))

  io.start := false.B
  when (controller1.io.longPress && controller2.io.longPress) {
    offset := 0.asUInt
    io.start := true.B
    leds := leds + 1.asUInt
  }.elsewhen (controller1.io.click) {
    offset := offset + (visibleWidth / 10).asUInt
  }.elsewhen (controller2.io.click) {
    offset := offset - (visibleWidth / 10).asUInt
  }.elsewhen (controller1.io.longPress) {
    offset := offset + visibleWidth.asUInt
  }.elsewhen (controller2.io.longPress) {
    offset := offset - visibleWidth.asUInt
  }
  io.visibleOffset := offset
  io.leds := leds
}
