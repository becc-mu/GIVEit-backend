require 'rails_helper'

RSpec.describe Listing, type: :model do
  it "can create a valid listing" do
    valid_listing = Listing.new(
      title: 'Listing Title',
      description: 'Description',
      start_date: 'Start Date',
      end_date: 'End Date',
      listing_type: 'Listing Type',
      location: 'Location'
    )

    expect(valid_listing).to be_valid
  end
end
