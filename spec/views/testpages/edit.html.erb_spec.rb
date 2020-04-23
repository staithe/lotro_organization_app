require 'rails_helper'

RSpec.describe "testpages/edit", type: :view do
  before(:each) do
    @testpage = assign(:testpage, Testpage.create!(
      name: "MyString",
      rank_id: 1,
      serial_number: 1
    ))
  end

  it "renders the edit testpage form" do
    render

    assert_select "form[action=?][method=?]", testpage_path(@testpage), "post" do

      assert_select "input[name=?]", "testpage[name]"

      assert_select "input[name=?]", "testpage[rank_id]"

      assert_select "input[name=?]", "testpage[serial_number]"
    end
  end
end
