# coding: utf-8
class Money
  attr_reader :amount

  def Money.dollar(amount)
    return Dollar.new(amount)
  end

  def Money.franc(amount)
    return Franc.new(amount)
  end

  def initialize(amount)
    @amount = amount
  end

  def ==(object)
    return self.equals(object)
  end

  def equals(object)
    return @amount == object.amount && self.class.name == object.class.name 
  end

end

