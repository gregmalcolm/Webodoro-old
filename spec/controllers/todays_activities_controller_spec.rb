#require 'spec_helper'
#require File.join(File.dirname(__FILE__),'..','spec_helpers','activities_controller_spec_helper.rb')
#include ActivitiesControllerSpecHelper
#
#describe TodaysActivitiesController do
#  fixtures :activities
#
#  def mock_activity(stubs={})
#    @mock_activity ||= mock_model(Activity, stubs)
#  end
#
#  describe "GET index" do
#    it "assigns all activities as @activities" do
#      Activity.stub(:find).and_return([mock_activity])
#      get :index
#      assigns[:activities].should == [mock_activity]
#    end
#
#    it "assigns all activities in order of position" do
#      get :index
#      validate_position_order assigns[:activities]
#    end
#  end
#end
