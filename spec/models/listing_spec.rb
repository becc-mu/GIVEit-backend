# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Listing, type: :model do
  it 'can create a valid listing' do
    valid_listing = Listing.new(
      title: 'Listing Title',
      description: 'Description',
      start_date: 'Start Date',
      end_date: 'End Date',
      listing_type: 'Listing Type',
      location: 'Location',
      phone_number: '1234',
      email: 'email@example.com',
      user_name: 'Sam'
    )

    expect(valid_listing).to be_valid
  end
end
