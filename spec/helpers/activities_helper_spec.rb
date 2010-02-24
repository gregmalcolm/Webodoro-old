require 'spec_helper'

class TestActivitiesHelper
  include ActivitiesHelper 
end

describe ActivitiesHelper do
  def mock_activity(stubs={})
    @mock_activity ||= mock_model(Activity, stubs)
  end

#  def mock_activity()
#    @mock_activity ||= mock_model(Activity,{})
#  end

  #describe all_activities do
    #it "should retrieve activities"
      #Activity.stub(:find).and_return([mock_activity])
      #TestActivitiesHelper.stub(:all_activities).and_return([mock_activity])
#      helper = ActivitiesHelper
#      helper.all_activities.should == [mock_activity]
    #end
end
