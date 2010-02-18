require 'spec_helper'

describe "/activities/new.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activity] = stub_model(Activity,
      :new_record? => true,
      :margin => "value for margin",
      :description => "value for description",
      :estimate => 9.99,
      :actual => 9.99,
      :position => 1
    )
  end

  it "renders new activity form" do
    render

    response.should have_tag("form[action=?][method=post]", activities_path) do
      with_tag("input#activity_margin[name=?]", "activity[margin]")
      with_tag("input#activity_description[name=?]", "activity[description]")
      with_tag("input#activity_estimate[name=?]", "activity[estimate]")
      with_tag("input#activity_actual[name=?]", "activity[actual]")
    end
  end
end
