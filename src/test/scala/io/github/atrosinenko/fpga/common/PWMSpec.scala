package io.github.atrosinenko.fpga.common

import chisel3.iotesters._
import org.scalatest.{FlatSpec, Matchers}

object PWMSpec {

  class PWMTesterConstant(pwm: PWM, denominator: Int, const: Boolean) extends PeekPokeTester(pwm) {
    poke(pwm.io.numerator, if (const) denominator else 0)
    poke(pwm.io.denominator, denominator)
    for (_ <- 1 to 2 * denominator) {
      step(1)
      expect(pwm.io.pulse, const)
    }
  }

  class PWMTesterExact(pwm: PWM, numerator: Int, ratio: Int) extends PeekPokeTester(pwm) {
    poke(pwm.io.numerator, numerator)
    poke(pwm.io.denominator, numerator * ratio)
    val delay = (1 to ratio + 2).takeWhile { _ =>
      step(1)
      peek(pwm.io.pulse) == BigInt(0)
    }
    println(s"delay = $delay")
    for (_ <- 1 to 10) {
      expect(pwm.io.pulse, true)
      for (_ <- 1 to ratio - 1) {
        step(1)
        expect(pwm.io.pulse, false)
      }
      step(1)
    }
  }

  class PWMTesterApproximate(pwm: PWM, numerator: Int, denominator: Int) extends PeekPokeTester(pwm) {
    poke(pwm.io.numerator,   numerator)
    poke(pwm.io.denominator, denominator)

    val count = (1 to 100 * denominator).map { _ =>
      step(1)
      peek(pwm.io.pulse).toInt
    }.sum

    val diff = count - 100 * numerator
    println(s"count = $count, diff = $diff")
    expect(Math.abs(diff) < 3, "Difference should be almost 0")
  }
}

class PWMSpec extends FlatSpec with Matchers {
  import PWMSpec._

  behavior of "PWMSpec"

  def testWith(testerConstructor: PWM => PeekPokeTester[PWM]): Unit = {
    chisel3.iotesters.Driver(() => new PWM(width = 4))(testerConstructor) shouldBe true
  }

  it should "return True constant for 1/1" in {
    testWith(new PWMTesterConstant(_, 1, true))
  }
  it should "return True constant for 10/10" in {
    testWith(new PWMTesterConstant(_, 10, true))
  }
  it should "return False constant for 0/1" in {
    testWith(new PWMTesterConstant(_, 1, false))
  }
  it should "return False constant for 0/10" in {
    testWith(new PWMTesterConstant(_, 10, false))
  }

  it should "return True exactly once in 3 steps for 1/3" in {
    testWith(new PWMTesterExact(_, 1, 3))
  }

  it should "return good approximation for 3/10" in {
    testWith(new PWMTesterApproximate(_, 3, 10))
  }
}