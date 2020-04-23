require "rails_helper"

RSpec.describe TestpagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/testpages").to route_to("testpages#index")
    end

    it "routes to #new" do
      expect(get: "/testpages/new").to route_to("testpages#new")
    end

    it "routes to #show" do
      expect(get: "/testpages/1").to route_to("testpages#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/testpages/1/edit").to route_to("testpages#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/testpages").to route_to("testpages#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/testpages/1").to route_to("testpages#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/testpages/1").to route_to("testpages#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/testpages/1").to route_to("testpages#destroy", id: "1")
    end
  end
end
