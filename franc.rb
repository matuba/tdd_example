# coding: utf-8
require './money'

class Franc < Money

  def initialize(amount, currency)
    super(amount, currency)
  end

  def times(multiplier)
    return Money.franc(@amount * multiplier)
  end

end

