require 'rails_helper'

RSpec.describe "testpages/new", type: :view do
  before(:each) do
    assign(:testpage, Testpage.new(
      name: "MyString",
      rank_id: 1,
      serial_number: 1
    ))
  end

  it "renders new testpage form" do
    render

    assert_select "form[action=?][method=?]", testpages_path, "post" do

      assert_select "input[name=?]", "testpage[name]"

      assert_select "input[name=?]", "testpage[rank_id]"

      assert_select "input[name=?]", "testpage[serial_number]"
    end
  end
end
