require 'rails_helper'

RSpec.describe "kinds/show", type: :view do
  before(:each) do
    @kind = assign(:kind, Kind.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
