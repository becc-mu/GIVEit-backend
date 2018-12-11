class ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render json: @listings
  end

  def new
  end

  def create
  end
end
