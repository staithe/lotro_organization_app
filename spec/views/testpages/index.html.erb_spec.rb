require 'rails_helper'

RSpec.describe "testpages/index", type: :view do
  before(:each) do
    assign(:testpages, [
      Testpage.create!(
        name: "Name",
        rank_id: 2,
        serial_number: 3
      ),
      Testpage.create!(
        name: "Name",
        rank_id: 2,
        serial_number: 3
      )
    ])
  end

  it "renders a list of testpages" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
