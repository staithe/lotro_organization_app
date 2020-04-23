require 'rails_helper'

RSpec.describe "deeds/index", type: :view do
  before(:each) do
    assign(:deeds, [
      Deed.create!(
        name: "Name",
        description: "MyText",
        location_id: 2
      ),
      Deed.create!(
        name: "Name",
        description: "MyText",
        location_id: 2
      )
    ])
  end

  it "renders a list of deeds" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
