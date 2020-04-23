require 'rails_helper'

RSpec.describe "npcs/show", type: :view do
  before(:each) do
    @npc = assign(:npc, Npc.create!(
      name: "Name",
      level: 2,
      kind_id: 3,
      drop_id: "",
      location_id: 4,
      morale: 5,
      power: 6,
      deed_id: "Deed"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Deed/)
  end
end
