package io.github.atrosinenko.fpga.tv

import chisel3._
import io.github.atrosinenko.fpga.common.PWM

object Codegen {
  class TestModule(mhz: Int) extends Module {
    val io = IO(new Bundle {
      val signal = Input(UInt(8.W))
      val button1 = Input(Bool())
      val button2 = Input(Bool())
      val leds = Output(UInt(4.W))

      val millivolts = Output(UInt(12.W))
    })
    val imageGenerator = Module(new TestColorImageGenerator(mhz, 540, 400))
    val encoder = Module(new PalGenerator(clocksPerUs = mhz))
    imageGenerator.io.x <> encoder.io.x
    imageGenerator.io.y <> encoder.io.y

    imageGenerator.io.signal1  <> io.signal
    imageGenerator.io.signal2  <> io.millivolts(9, 2)
    imageGenerator.io.button1 <> io.button1
    imageGenerator.io.button2 <> io.button2
    imageGenerator.io.leds <> io.leds
    imageGenerator.io.red   <> encoder.io.red
    imageGenerator.io.green <> encoder.io.green
    imageGenerator.io.blue  <> encoder.io.blue

    io.millivolts := encoder.io.millivolts

    override def desiredName: String = "CompositeSignalGenerator"
  }

  def main(args: Array[String]): Unit = {
    Driver.execute(args, () => new PWM(12))
    Driver.execute(args, () => new TestModule(mhz = 32))
  }
}
