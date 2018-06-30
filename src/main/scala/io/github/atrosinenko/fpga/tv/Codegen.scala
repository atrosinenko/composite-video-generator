package io.github.atrosinenko.fpga.tv

import chisel3._
import io.github.atrosinenko.fpga.common.PWM

object Codegen {
  class TestModule(mhz: Int) extends Module {
    val io = IO(new Bundle {
      val millivolts = Output(UInt(12.W))
    })
    val imageGenerator = Module(new TestColorImageGenerator(540, 400))
    val encoder = Module(new PalGenerator(clocksPerUs = mhz))
    imageGenerator.io.x <> encoder.io.x
    imageGenerator.io.y <> encoder.io.y

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
