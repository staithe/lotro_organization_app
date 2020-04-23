require 'rails_helper'

RSpec.describe "drops/edit", type: :view do
  before(:each) do
    @drop = assign(:drop, Drop.create!(
      name: "MyString",
      item_level: 1,
      descritption: "MyText",
      task_item: false,
      location_id: 1
    ))
  end

  it "renders the edit drop form" do
    render

    assert_select "form[action=?][method=?]", drop_path(@drop), "post" do

      assert_select "input[name=?]", "drop[name]"

      assert_select "input[name=?]", "drop[item_level]"

      assert_select "textarea[name=?]", "drop[descritption]"

      assert_select "input[name=?]", "drop[task_item]"

      assert_select "input[name=?]", "drop[location_id]"
    end
  end
end
