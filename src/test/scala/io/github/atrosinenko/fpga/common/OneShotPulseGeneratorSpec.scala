package io.github.atrosinenko.fpga.common

import chisel3.iotesters.PeekPokeTester
import org.scalatest.{FlatSpec, Matchers}

object OneShotPulseGeneratorSpec {
  class PulseTester(p: OneShotPulseGenerator) extends PeekPokeTester(p) {
    for(_ <- 1 to 3) {
      reset()
      var cur = p.initial
      for (delay <- p.lengths) {
        for (_ <- 1 to delay) {
          expect(p.io.signal, cur)
          step(1)
        }
        cur = !cur
      }
      for (_ <- 1 to 10) {
        expect(p.io.signal, cur)
        step(1)
      }
    }
  }
}

class OneShotPulseGeneratorSpec extends FlatSpec with Matchers {
  import OneShotPulseGeneratorSpec._

  behavior of "PulseGenerator"

  it should "work correctly" in {
    for (init <- Seq(true, false)) {
      withClue(s"When initial = $init, ") {
        chisel3.iotesters.Driver(
          () => new OneShotPulseGenerator(Seq(1, 2, 3, 4, 1), init)
        )(
          new PulseTester(_)
        ) shouldBe true
      }
    }
  }
}
