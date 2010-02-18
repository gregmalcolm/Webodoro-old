require 'spec_helper'

describe "/activities/index.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activities] = [
      stub_model(Activity,
        :margin => "value for margin",
        :description => "value for description",
        :estimate => 9.99,
        :actual => 9.99,
        :position => 2
      ),
      stub_model(Activity,
        :margin => "value for margin",
        :description => "value for description",
        :estimate => 9.99,
        :actual => 9.99,
        :position => 1
      )
    ]
  end

  it "renders a list of activities in position order" do
    render
    response.should have_tag("tr>td", "value for margin".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
  end
end
