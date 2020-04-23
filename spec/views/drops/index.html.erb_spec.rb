require 'rails_helper'

RSpec.describe "drops/index", type: :view do
  before(:each) do
    assign(:drops, [
      Drop.create!(
        name: "Name",
        item_level: 2,
        descritption: "MyText",
        task_item: false,
        location_id: 3
      ),
      Drop.create!(
        name: "Name",
        item_level: 2,
        descritption: "MyText",
        task_item: false,
        location_id: 3
      )
    ])
  end

  it "renders a list of drops" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
