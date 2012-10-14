# coding: utf-8

require './dollar'
require './franc'

describe Dollar do
  describe "#times" do
    let(:five) {Dollar.new(5)}

    context "５の場合" do
      it '5X2=10' do
        five.times(2).equals(Dollar.new(10)).should == true
      end
      it '5X3=15' do
        five.times(3).equals(Dollar.new(15)).should == true
      end
    end
  end

  describe "#equals" do
    let(:five) {Dollar.new(5)}

    context "５の場合" do
      it '5==5はtrue' do
        five.equals(Dollar.new(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Dollar.new(6)).should == false
      end
    end

  end

end

describe Franc do
  describe "#times" do
    let(:five) {Franc.new(5)}

    context "５の場合" do
      it '5X2=10' do
        five.times(2).equals(Franc.new(10)).should == true
      end
      it '5X3=15' do
        five.times(3).equals(Franc.new(15)).should == true
      end
    end
  end

  describe "#equals" do
    let(:five) {Franc.new(5)}

    context "５の場合" do
      it '5==5はtrue' do
        five.equals(Franc.new(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Franc.new(6)).should == false
      end
      it '5(Franc)==5(Dollar)はfalse' do
        five.equals(Dollar.new(5)).should == false
      end

    end
  end

end
