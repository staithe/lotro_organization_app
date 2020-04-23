require 'rails_helper'

RSpec.describe "deeds/new", type: :view do
  before(:each) do
    assign(:deed, Deed.new(
      name: "MyString",
      description: "MyText",
      location_id: 1
    ))
  end

  it "renders new deed form" do
    render

    assert_select "form[action=?][method=?]", deeds_path, "post" do

      assert_select "input[name=?]", "deed[name]"

      assert_select "textarea[name=?]", "deed[description]"

      assert_select "input[name=?]", "deed[location_id]"
    end
  end
end
