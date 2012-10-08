# coding: utf-8

require './dollar'

describe Dollar do
  describe "#dollar" do
    context "乗法" do
      it '2X' do
        five = Dollar.new(5)
        five.times(2)
        five.amount.should == 10
      end
    end
  end

end

