require 'rails_helper'

RSpec.describe "drops/new", type: :view do
  before(:each) do
    assign(:drop, Drop.new(
      name: "MyString",
      item_level: 1,
      descritption: "MyText",
      task_item: false,
      location_id: 1
    ))
  end

  it "renders new drop form" do
    render

    assert_select "form[action=?][method=?]", drops_path, "post" do

      assert_select "input[name=?]", "drop[name]"

      assert_select "input[name=?]", "drop[item_level]"

      assert_select "textarea[name=?]", "drop[descritption]"

      assert_select "input[name=?]", "drop[task_item]"

      assert_select "input[name=?]", "drop[location_id]"
    end
  end
end
