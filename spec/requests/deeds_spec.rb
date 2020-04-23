 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/deeds", type: :request do
  # Deed. As you add validations to Deed, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Deed.create! valid_attributes
      get deeds_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      deed = Deed.create! valid_attributes
      get deed_url(deed)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_deed_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      deed = Deed.create! valid_attributes
      get edit_deed_url(deed)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Deed" do
        expect {
          post deeds_url, params: { deed: valid_attributes }
        }.to change(Deed, :count).by(1)
      end

      it "redirects to the created deed" do
        post deeds_url, params: { deed: valid_attributes }
        expect(response).to redirect_to(deed_url(Deed.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Deed" do
        expect {
          post deeds_url, params: { deed: invalid_attributes }
        }.to change(Deed, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post deeds_url, params: { deed: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested deed" do
        deed = Deed.create! valid_attributes
        patch deed_url(deed), params: { deed: new_attributes }
        deed.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the deed" do
        deed = Deed.create! valid_attributes
        patch deed_url(deed), params: { deed: new_attributes }
        deed.reload
        expect(response).to redirect_to(deed_url(deed))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        deed = Deed.create! valid_attributes
        patch deed_url(deed), params: { deed: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested deed" do
      deed = Deed.create! valid_attributes
      expect {
        delete deed_url(deed)
      }.to change(Deed, :count).by(-1)
    end

    it "redirects to the deeds list" do
      deed = Deed.create! valid_attributes
      delete deed_url(deed)
      expect(response).to redirect_to(deeds_url)
    end
  end
end
