require 'spec_helper'

describe "/activities/edit.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activity] = @activity = stub_model(Activity,
      :new_record? => false,
      :margin => "value for margin",
      :description => "value for description",
      :estimate => 9.99,
      :actual => 9.99,
      :position => 1
    )
  end

  it "renders the edit activity form" do
    render

    response.should have_tag("form[action=#{activity_path(@activity)}][method=post]") do
      with_tag('input#activity_margin[name=?]', "activity[margin]")
      with_tag('input#activity_description[name=?]', "activity[description]")
      with_tag('input#activity_estimate[name=?]', "activity[estimate]")
      with_tag('input#activity_actual[name=?]', "activity[actual]")
    end
  end
end
