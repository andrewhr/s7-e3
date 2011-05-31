require 'spec_helper'

describe D2Hero::Character do

  subject do
    D2Hero::Character.new(:name => "Gandalf",
                          :character_class => :sorceress,
                          :level => 99,
                          :strength => 20,
                          :energy => 999,
                          :dexterity => 100,
                          :vitality => 999)
  end

  its(:name)            { should == "Gandalf" }
  its(:character_class) { should == :sorceress }
  its(:level)           { should == 99 }
  its(:strength)        { should == 20 }
  its(:energy)          { should == 999 }
  its(:dexterity)       { should == 100 }
  its(:vitality)        { should == 999 }

end
