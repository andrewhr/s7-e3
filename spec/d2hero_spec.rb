require 'spec_helper'

describe D2Hero do

  describe "NecroHiSkilz" do
    before(:each) do
      @char = D2Hero.load('spec/fixtures/NecroHiSkilz.d2s')
    end

    it "name should be 'NecroHiSkilz'" do
      @char.name.should == "NecroHiSkilz"
    end

    it "class should be ':necromancer'" do
      @char.character_class.should == :necromancer
    end

    it "level should be '99'" do
      @char.level.should == 99
    end

    it "strength should be '31'" do
      @char.strength.should == 31
    end

    it "energy should be '666'" do
      @char.energy.should == 666
    end

    it "dexterity should be '1074100000'" do
      @char.dexterity.should == 1074100000
    end

    it "vitatlity should be '666'" do
      @char.vitality.should == 666
    end
  end
end
