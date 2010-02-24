require File.join(File.dirname(__FILE__),'..','spec_helper.rb')

module ActivitiesControllerSpecHelper
  def validate_position_order(activities)
      activities.count.should >= 2
      activities.count.times do |i|
        activities[i].position.should == i + 1
      end
  end
end