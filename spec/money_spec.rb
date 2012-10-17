# coding: utf-8
require './money'
require './bank'
require './sum'

describe Bank do
  describe "#reduce" do
    let(:bank) {Bank.new()}

    context "$の場合" do
      it '$3+$4=$7' do 
        sum = Sum.new(Money::dollar(3), Money::dollar(4))
        result = bank.reduce(sum, "USD")
        result.should == Money::dollar(7)
      end

      it '$1を$1へ換算' do 
        result = bank.reduce(Money::dollar(1), "USD")
        result.should == Money::dollar(1)
      end

    end

  end
end

describe Money do
  describe "#currency" do
    context "$の場合" do
      it 'USDを返す' do
        Money::dollar(1).currency.should == "USD"
      end
    end

    context "フランの場合" do
      it 'CHFを返す' do
        Money::franc(1).currency.should == "CHF"
      end
    end
  end

  describe "#times" do
    let(:five) {Money::dollar(5)}

    context "$５の場合" do
      it '5X2=10' do
        five.times(2).should == Money::dollar(10)
      end
      it '5X3=15' do
        five.times(3).should == Money::dollar(15)
      end
    end
  end

  describe "#equals" do
    let(:five) {Money::dollar(5)}
    context "$５の場合" do
      it '5==5はtrue' do
        five.equals(Money::dollar(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Money::dollar(6)).should == false
      end
      it '5(Franc)==5(Dollar)はfalse' do
        five.equals(Money::franc(5)).should == false
      end
    end
  end

  describe "#plus" do
    let(:five) {Money::dollar(5)}
    let(:bank) {Bank.new()}
    context "$５の場合" do
      it '5+5=10' do
        sum = five.plus(five)
        reduced = bank.reduce(sum, "USD")
        reduced.should == Money::dollar(10)
      end

      it 'Sum.augendとSum.addendに5を設定' do
        result = five.plus(five)
        sum = result
        sum.augend.should == Money::dollar(5)
        sum.addend.should == Money::dollar(5)
      end

    end

  end

end
