require 'rails_helper'

RSpec.describe "static_pages/new", type: :view do
  before(:each) do
    assign(:static_page, StaticPage.new())
  end

  it "renders new static_page form" do
    render

    assert_select "form[action=?][method=?]", static_pages_path, "post" do
    end
  end
end
