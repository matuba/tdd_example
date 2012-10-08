# coding: utf-8
class Dollar

  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(object)
    return @amount == object.amount
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end


end

