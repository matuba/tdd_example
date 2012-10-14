# coding: utf-8
class Money
  attr_reader :amount
  attr_reader :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def Money.dollar(amount)
    return Dollar.new(amount, "USD")
  end

  def Money.franc(amount)
    return Franc.new(amount, "CHF")
  end

  def ==(object)
    return self.equals(object)
  end

  def equals(object)
    return @amount == object.amount && self.class.name == object.class.name 
  end

  def currency
    return @currency
  end

end

