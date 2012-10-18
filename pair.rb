# coding: utf-8

class Pair
  attr_reader :from
  attr_reader :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(object)
    return self.equals(object)
  end

  def equals(pair)
    return pair.from == from && pair.to == to
  end

  def hashCode
    return 0
  end

end

