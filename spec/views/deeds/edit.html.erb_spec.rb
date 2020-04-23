require 'rails_helper'

RSpec.describe "deeds/edit", type: :view do
  before(:each) do
    @deed = assign(:deed, Deed.create!(
      name: "MyString",
      description: "MyText",
      location_id: 1
    ))
  end

  it "renders the edit deed form" do
    render

    assert_select "form[action=?][method=?]", deed_path(@deed), "post" do

      assert_select "input[name=?]", "deed[name]"

      assert_select "textarea[name=?]", "deed[description]"

      assert_select "input[name=?]", "deed[location_id]"
    end
  end
end
