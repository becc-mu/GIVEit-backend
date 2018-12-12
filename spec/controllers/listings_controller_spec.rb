require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  let(:valid_listing_attributes) {
    {
      title: 'Listing Title',
      description: 'Description',
      start_date: 'Start Date',
      end_date: 'End Date',
      listing_type: 'Listing Type',
      location: 'Location'
    }
  }

  let(:invalid_listing_attributes) {
    {}
  }

  describe "GET #index" do
    it "returns a JSON list of the listings" do
      listing = Listing.create(valid_listing_attributes)

      get :index, params: {}
      expect(response).to be_successful

      expect(JSON.parse(response.body)).to eq([
        {
          "id"=>listing.id,
          "title"=>listing.title,
          "description"=>listing.description,
          "start_date"=>listing.start_date,
          "end_date"=>listing.end_date,
          "listing_type"=>listing.listing_type,
          "location"=>listing.location,
          "created_at"=>listing.created_at.as_json,
          "updated_at"=>listing.updated_at.as_json
        }
      ])
    end
  end

  describe "GET #show" do
    it "returns JSON of the listing" do
      listing = Listing.create(valid_listing_attributes)
      get :show, params: {id: listing.to_param}
      expect(response).to be_successful
      expect(JSON.parse(response.body)).to eq(
        {
          "id"=>listing.id,
          "title"=>listing.title,
          "description"=>listing.description,
          "start_date"=>listing.start_date,
          "end_date"=>listing.end_date,
          "listing_type"=>listing.listing_type,
          "location"=>listing.location,
          "created_at"=>listing.created_at.as_json,
          "updated_at"=>listing.updated_at.as_json
        }
      )
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new listing" do
        expect {
          post :create, params: { listing: valid_listing_attributes }
        }.to change(Listing, :count).by(1)
      end

      it "renders a JSON response with new listing" do
        post :create, params: { listing: valid_listing_attributes }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(listing_url(Listing.last))
      end
    end
    context "with invalid params" do
      it "renders a JSON response with errors for the new listing" do

      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "updates the requested listing" do

      end

      it "renders a JSON response with the listing" do

      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the listing" do

      end
    end
  end

  describe "DELETE #destroy" do
    context "with valid params" do
      it "destroys the requested listing" do

      end
    end
  end
end
