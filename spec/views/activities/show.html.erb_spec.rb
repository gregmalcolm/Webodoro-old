require 'spec_helper'

describe "/activities/show.html.erb" do
  include ActivitiesHelper
  before(:each) do
    assigns[:activity] = @activity = stub_model(Activity,
      :margin => "value for margin",
      :description => "value for description",
      :estimate => 9.99,
      :actual => 9.99,
      :position => 29
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ margin/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/9\.99/)
    response.should have_text(/9\.99/)
    response.should_not have_text(/29/)
  end
end
