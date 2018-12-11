require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  describe "GET #index" do
    it "returns a JSON list of the listings" do
      listing = Listing.create! {
        {
          title: 'Listing Title',
          description: 'Description',
          start_date: 'Start Date',
          end_date: 'End Date',
          listing_type: 'Listing Type',
          location: 'Location'
        }
      }

      get :index, params: {}
      expect(response).to be_successful

      p JSON.parse(response.body)

      expect(JSON.parse(response.body)).to eq([
        {
          "id" => listing.id,
          "title" => listing.title,
          "description" => listing.description,
          "start_date" => listing.start_date,
          "end_date" => listing.end_date,
          "listing_type" => listing.listing_type,
          "location" => listing.location
        }
        ])
    end
  end
end
