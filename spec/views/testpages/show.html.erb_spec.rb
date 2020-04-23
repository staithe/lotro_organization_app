require 'rails_helper'

RSpec.describe "testpages/show", type: :view do
  before(:each) do
    @testpage = assign(:testpage, Testpage.create!(
      name: "Name",
      rank_id: 2,
      serial_number: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
