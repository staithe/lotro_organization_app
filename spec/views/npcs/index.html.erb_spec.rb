require 'rails_helper'

RSpec.describe "npcs/index", type: :view do
  before(:each) do
    assign(:npcs, [
      Npc.create!(
        name: "Name",
        level: 2,
        kind_id: 3,
        drop_id: "",
        location_id: 4,
        morale: 5,
        power: 6,
        deed_id: "Deed"
      ),
      Npc.create!(
        name: "Name",
        level: 2,
        kind_id: 3,
        drop_id: "",
        location_id: 4,
        morale: 5,
        power: 6,
        deed_id: "Deed"
      )
    ])
  end

  it "renders a list of npcs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: "Deed".to_s, count: 2
  end
end
