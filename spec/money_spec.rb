# coding: utf-8

require './dollar'

describe Dollar do
  describe "#times" do
    let(:five) {Dollar.new(5)}

    context "５に数値をかける場合" do
      it '5X2=10' do
        Dollar.new(10).equals(five.times(2)).should == true
      end
      it '5X3=15' do
        Dollar.new(15).equals(five.times(3)).should == true
      end
    end
  end

  describe "#equals" do
    let(:five) {Dollar.new(5)}

    context "５と比較する場合" do
      it '5==5はtrue' do
        five.equals(Dollar.new(5)).should == true
      end
      it '5==6はfalse' do
        five.equals(Dollar.new(6)).should == false
      end
    end

  end

end

