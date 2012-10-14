# coding: utf-8
require './dollar'
require './franc'

describe Dollar do
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
end

describe Dollar do
  describe "#times" do
    let(:five) {Money::dollar(5)}

    context "５の場合" do
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

    context "５の場合" do
      it '5==5はtrue' do
        five.equals(Money::dollar(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Money::dollar(6)).should == false
      end
    end
  end
end

describe Franc do
  describe "#times" do
    let(:five) {Money::franc(5)}

    context "５の場合" do
      it '5X2=10' do
        five.times(2).should == Money::franc(10)
      end
      it '5X3=15' do
        five.times(3).should == Money::franc(15)
      end
    end
  end

  describe "#equals" do
    let(:five) {Money::franc(5)}

    context "５の場合" do
      it '5==5はtrue' do
        five.equals(Money::franc(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Money::franc(6)).should == false
      end
      it '5(Franc)==5(Dollar)はfalse' do
        five.equals(Money::dollar(5)).should == false
      end
    end
  end
end
