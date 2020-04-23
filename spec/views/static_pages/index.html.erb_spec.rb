require 'rails_helper'

RSpec.describe "static_pages/index", type: :view do
  before(:each) do
    assign(:static_pages, [
      StaticPage.create!(),
      StaticPage.create!()
    ])
  end

  it "renders a list of static_pages" do
    render
  end
end
