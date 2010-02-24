module ActivitiesHelper
  def all_activities
    @activities = Activity.find(:all, :order => "position")
  end
end
