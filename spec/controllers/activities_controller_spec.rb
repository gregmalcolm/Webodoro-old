require 'spec_helper'
require File.join(File.dirname(__FILE__),'..','spec_helpers','activities_controller_spec_helper.rb')

describe ActivitiesController do
  fixtures :activities

  include ActivitiesControllerSpecHelper

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

  describe "GET show" do
    it "assigns the requested activity as @activity" do
      activity = stub('activity')
      Activity.expects(:find).with("37").returns(activity)
      get :show, :id => "37"
      assigns[:activity].should == activity
    end
  end

  describe "GET new" do
    it "assigns a new activity as @activity" do
      activity = stub('activity')
      Activity.expects(:new).returns(activity)
      get :new
      assigns[:activity].should equal(activity)
    end
  end

  describe "GET edit" do
    it "assigns the requested activity as @activity" do
      activity = stub('activity')
      Activity.expects(:find).with("37").returns(activity)
      get :edit, :id => "37"
      assigns[:activity].should equal(activity)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created activity as @activity" do
        activity = stub('activity', :class => Activity, :save => true)
        Activity.stubs(:new).with('these' => 'params').returns(activity)
        post :create, :activity => {:these => 'params'}
        assigns[:activity].should equal(activity)
      end

      it "redirects to the created activity" do
        activity = stub('activity', :class => Activity, :save => true)
        Activity.expects(:new).returns(activity)
        post :create, :activity => {}
        response.should redirect_to(activity_url(activity))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved activity as @activity" do
        activity = stub('activity', :save => false)
        Activity.expects(:new).with({'these' => 'params'}).returns(activity)
        post :create, :activity => {:these => 'params'}
        assigns[:activity].should equal(activity)
      end

      it "re-renders the 'new' template" do
        activity = stub('activity', :save => false)
        Activity.expects(:new).returns(activity)
        post :create, :activity => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested activity" do
        activity = mock('activity')
        activity.responds_like(Activity.new)
        Activity.expects(:find).with("37").returns(activity)
        activity.expects(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :activity => {:these => 'params'}
      end

      it "assigns the requested activity as @activity" do
        activity = stub('activity', :class => Activity, :update_attributes => true)
        Activity.expects(:find).returns(activity)
        put :update, :id => "1"
        assigns[:activity].should equal(activity)
      end

      it "redirects to the activity" do
        activity = stub('activity', :class => Activity, :update_attributes => true)
        Activity.expects(:find).returns(activity)
        put :update, :id => "1"
        response.should redirect_to(activity_url(activity))
      end
    end

    describe "with invalid params" do
      it "updates the requested activity" do
        activity = mock('activity')
        activity.responds_like(Activity.new)
        Activity.expects(:find).with("37").returns(activity)
        activity.expects(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :activity => {:these => 'params'}
      end

      it "assigns the activity as @activity" do
        activity = stub('activity', :update_attributes => false)
        Activity.expects(:find).returns(activity)
        put :update, :id => "1"
        assigns[:activity].should equal(activity)
      end

      it "re-renders the 'edit' template" do
        activity = stub('activity', :update_attributes => false)
        Activity.expects(:find).returns(activity)
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

    describe "DELETE destroy" do
      it "destroys the requested activity" do
        activity = mock('activity')
        activity.responds_like(Activity.new)
        Activity.expects(:find).with("37").returns(activity)
        activity.expects(:destroy)
        delete :destroy, :id => "37"
      end

      it "redirects to the activities list" do
        activity = stub('activity', :destroy => true)
        Activity.expects(:find).returns(activity)
        delete :destroy, :id => "1"
        response.should redirect_to(activities_url)
      end
    end
  end
end