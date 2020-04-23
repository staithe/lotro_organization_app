require 'rails_helper'

RSpec.describe "deeds/show", type: :view do
  before(:each) do
    @deed = assign(:deed, Deed.create!(
      name: "Name",
      description: "MyText",
      location_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
