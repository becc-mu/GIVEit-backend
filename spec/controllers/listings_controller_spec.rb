require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  let(:valid_attributes) {
    {  }
  }

  describe "GET #index" do
    it "returns a JSON list of the listings" do
      listing = Listing.create! valid_attributes

      get :index, params: {}
      expect(response).to be_successful
    end
  end
end
