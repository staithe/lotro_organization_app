require 'rails_helper'

RSpec.describe "drops/show", type: :view do
  before(:each) do
    @drop = assign(:drop, Drop.create!(
      name: "Name",
      item_level: 2,
      descritption: "MyText",
      task_item: false,
      location_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
  end
end
