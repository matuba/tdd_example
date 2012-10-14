# coding: utf-8
class Money

  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(object)
    return @amount == object.amount && self.class.name == object.class.name 
  end

end

