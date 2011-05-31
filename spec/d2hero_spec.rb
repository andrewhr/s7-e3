require 'spec_helper'

describe D2Hero do

  context ".load" do
    describe "NecroHiSkilz" do

      subject { D2Hero.load('spec/fixtures/NecroHiSkilz.d2s') }

      its(:name)            { should == "NecroHiSkilz" }
      its(:character_class) { should == :necromancer }
      its(:level)           { should == 99 }
      its(:strength)        { should == 31 }
      its(:energy)          { should == 666 }
      its(:dexterity)       { should == 1074100000 }
      its(:vitality)        { should == 666 }
    end
  end
end
