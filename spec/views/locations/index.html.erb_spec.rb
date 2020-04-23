require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        name: "Name",
        description: "MyText",
        coordinates: "Coordinates"
      ),
      Location.create!(
        name: "Name",
        description: "MyText",
        coordinates: "Coordinates"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Coordinates".to_s, count: 2
  end
end
