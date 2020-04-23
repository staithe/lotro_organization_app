require 'rails_helper'

RSpec.describe "npcs/new", type: :view do
  before(:each) do
    assign(:npc, Npc.new(
      name: "MyString",
      level: 1,
      kind_id: 1,
      drop_id: "",
      location_id: 1,
      morale: 1,
      power: 1,
      deed_id: "MyString"
    ))
  end

  it "renders new npc form" do
    render

    assert_select "form[action=?][method=?]", npcs_path, "post" do

      assert_select "input[name=?]", "npc[name]"

      assert_select "input[name=?]", "npc[level]"

      assert_select "input[name=?]", "npc[kind_id]"

      assert_select "input[name=?]", "npc[drop_id]"

      assert_select "input[name=?]", "npc[location_id]"

      assert_select "input[name=?]", "npc[morale]"

      assert_select "input[name=?]", "npc[power]"

      assert_select "input[name=?]", "npc[deed_id]"
    end
  end
end
