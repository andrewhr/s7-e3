require 'spec_helper'

describe D2Hero::Character do

  before(:each) do
    @char = D2Hero::Character.new(:name => "Gandalf",
                                  :character_class => :sorceress,
                                  :level => 99,
                                  :strenght => 20,
                                  :energy => 999,
                                  :dexterity => 100,
                                  :vitality => 999)
  end

  it "give access to name" do
    @char.name.should == "Gandalf"
  end

  it "give access to characer class" do
    @char.character_class.should == :sorceress
  end

  it "give access to characer level" do
    @char.level.should == 99
  end

  it "give access to strenght" do
    @char.strenght.should == 20
  end

  it "give access to energy" do
    @char.energy.should == 999
  end

  it "give access to dexterity" do
    @char.dexterity.should == 100
  end

  it "give access to vitality" do
    @char.vitality.should == 999
  end

end
