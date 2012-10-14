# coding: utf-8
require './money'

class Dollar < Money

  def initialize(amount, currency)
    super(amount, currency)
  end

  def times(multiplier)
    return Money.dollar(@amount * multiplier)
  end

end

