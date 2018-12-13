# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  let(:valid_listing_attributes) do
    {
      title: 'Listing Title',
      description: 'Description',
      start_date: 'Start Date',
      end_date: 'End Date',
      listing_type: 'Listing Type',
      location: 'Location'
    }
  end

  let(:invalid_listing_attributes) do
    {
      title: nil,
      description: nil,
      start_date: nil,
      end_date: nil,
      listing_type: nil,
      location: nil
    }
  end

  describe 'GET #index' do
    it 'returns a JSON list of the listings' do
      listing = Listing.create(valid_listing_attributes)

      get :index, params: {}
      expect(response).to be_successful

      expect(JSON.parse(response.body)).to eq([
                                                {
                                                  'id' => listing.id,
                                                  'title' => listing.title,
                                                  'description' => listing.description,
                                                  'start_date' => listing.start_date,
                                                  'end_date' => listing.end_date,
                                                  'listing_type' => listing.listing_type,
                                                  'location' => listing.location,
                                                  'created_at' => listing.created_at.as_json,
                                                  'updated_at' => listing.updated_at.as_json
                                                }
                                              ])
    end
  end

  describe 'GET #show' do
    it 'returns JSON of the listing' do
      listing = Listing.create(valid_listing_attributes)
      get :show, params: { id: listing.to_param }
      expect(response).to be_successful
      expect(JSON.parse(response.body)).to eq(
        'id' => listing.id,
        'title' => listing.title,
        'description' => listing.description,
        'start_date' => listing.start_date,
        'end_date' => listing.end_date,
        'listing_type' => listing.listing_type,
        'location' => listing.location,
        'created_at' => listing.created_at.as_json,
        'updated_at' => listing.updated_at.as_json
      )
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new listing' do
        expect do
          post :create, params: { listing: valid_listing_attributes }
        end.to change(Listing, :count).by(1)
      end

      it 'renders a JSON response with new listing' do
        post :create, params: { listing: valid_listing_attributes }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(listing_url(Listing.last))
      end
    end
    context 'with invalid params' do
      # it "renders a JSON response with errors for the new listing" do
      #   post :create, params: { listing: invalid_listing_attributes }
      #   # expect(response).to have_http_status(:unprocessable_entity)
      #   expect(response.content_type).to eq('application/json')
      # end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested listing' do
        listing = Listing.create(valid_listing_attributes)
        new_attributes = {
          title: 'Listing Title Updated',
          description: 'Description',
          start_date: 'Start Date',
          end_date: 'End Date',
          listing_type: 'Listing Type',
          location: 'Location'
        }
        put :update, params: { id: listing.to_param, listing: new_attributes }
        listing.reload

        expect(listing.title).to eq new_attributes[:title]
      end

      it 'renders a JSON response with the listing' do
        listing = Listing.create(valid_listing_attributes)
        new_attributes = {
          title: 'Listing Title Updated',
          description: 'Description',
          start_date: 'Start Date',
          end_date: 'End Date',
          listing_type: 'Listing Type',
          location: 'Location'
        }
        put :update, params: { id: listing.to_param, listing: new_attributes }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    # context "with invalid params" do
    #   it "renders a JSON response with errors for the listing" do
    #
    #   end
    # end
  end

  describe 'DELETE #destroy' do
    context 'with valid params' do
      it 'destroys the requested listing' do
        listing = Listing.create(valid_listing_attributes)
        expect do
          delete :destroy, params: { id: listing.to_param }
        end.to change(Listing, :count).by(-1)
      end
    end
  end
end
