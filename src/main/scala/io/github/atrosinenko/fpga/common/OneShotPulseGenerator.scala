package io.github.atrosinenko.fpga.common

import chisel3._
import chisel3.util._

class OneShotPulseGenerator(val lengths: Seq[Int], val initial: Boolean) extends Module {

  // Add sentinel value here, so no output flip required after the last state
  private val delayVecValues = lengths.map(_ - 1) :+ 0

  val io = IO(new Bundle {
    val signal = Output(Bool())
  })

  private val nextIndex = RegInit(1.asUInt( log2Ceil(delayVecValues.length + 1).W ))
  private val countdown = RegInit(delayVecValues.head.asUInt( log2Ceil(lengths.max + 1).W ))

  private val output    = RegInit(initial.asBool)
  private val delaysVec = VecInit(delayVecValues.map(_.asUInt))

  private val moveNext = countdown === 0.asUInt
  private val finished = nextIndex === delayVecValues.length.asUInt

  when (!finished) {
    when (moveNext) {
      countdown := delaysVec(nextIndex)
      nextIndex := nextIndex + 1.asUInt
      output := !output
    }.otherwise {
      countdown := countdown - 1.asUInt
    }
  }

  io.signal := output
}
