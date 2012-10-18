# coding: utf-8
require './sum'
require './pair'

class Bank
  attr_reader :rates

  def initialize()
    @rates = Hash.new()
  end

  def reduce(source, to)
    return source.reduce(self, to)
  end

  def rate(from, to)
    if from == to
      return 1
    end
    return @rates.fetch(Pair.new(from, to).hashCode())
  end

  def addRate(from, to, rate)
    @rates.store(Pair.new(from, to).hashCode, rate)
  end

end

