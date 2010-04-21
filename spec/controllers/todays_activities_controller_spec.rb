require 'spec_helper'
require File.join(File.dirname(__FILE__),'..','spec_helpers','activities_controller_spec_helper.rb')
include ActivitiesControllerSpecHelper

describe TodaysActivitiesController do
  fixtures :activities

  describe "GET index" do
    it "assigns all activities as @activities" do
      activity = stub('activity')
      Activity.expects(:find).returns([activity])
      get :index
      assigns[:activities].should == [activity]
    end

    it "assigns all activities in order of position" do
      get :index
      validate_position_order assigns[:activities]
    end
  end
end
