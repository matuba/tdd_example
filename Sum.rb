# coding: utf-8
require './expression'

class Sum < Expression
  attr_reader :augend
  attr_reader :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    amount = augend.amount + addend.amount
    return Money.new(amount, to)
  end

end

