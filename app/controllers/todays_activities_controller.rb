require File.join(File.dirname(__FILE__),'..','helpers','activities_helper')
include ActivitiesHelper

class TodaysActivitiesController < ApplicationController
  def index
    all_activities
  end

end
