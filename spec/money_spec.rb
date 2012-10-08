# coding: utf-8

require './dollar'

describe Dollar do
  describe "#dollar" do
    context "乗法テスト" do
      it 'X' do
        five = Dollar.new(5)
        product = five.times(2)
        product.amount.should == 10

        product = five.times(3)
        product.amount.should == 15
      end
    end

    context "等価性テスト" do
      it '=' do
        Dollar.new(5).equals(Dollar.new(5)).should == true
        Dollar.new(5).equals(Dollar.new(6)).should == false
      end
    end

  end

end

