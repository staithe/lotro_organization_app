require 'rails_helper'

RSpec.describe "npcs/edit", type: :view do
  before(:each) do
    @npc = assign(:npc, Npc.create!(
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

  it "renders the edit npc form" do
    render

    assert_select "form[action=?][method=?]", npc_path(@npc), "post" do

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
