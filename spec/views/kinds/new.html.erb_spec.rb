require 'rails_helper'

RSpec.describe "kinds/new", type: :view do
  before(:each) do
    assign(:kind, Kind.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new kind form" do
    render

    assert_select "form[action=?][method=?]", kinds_path, "post" do

      assert_select "input[name=?]", "kind[name]"

      assert_select "textarea[name=?]", "kind[description]"
    end
  end
end
