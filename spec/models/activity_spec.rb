#require 'spec_helper'
#
#describe Activity do
#  before(:each) do
#    @valid_attributes = {
#      :margin => "value for margin",
#      :description => "value for description",
#      :estimate => 9.99,
#      :actual => 9.99
#    }
#  end
#
#  it "should create a new instance given valid attributes" do
#    Activity.create!(@valid_attributes)
#  end
#
#  it "should increment the position for each new instance" do
#    act_1 = Activity.create(@valid_attributes)
#    act_2 = Activity.create(@valid_attributes)
#
#    act_2.position.should == act_1.position + 1
#  end
#end
