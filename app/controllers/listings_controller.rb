# frozen_string_literal: true

class ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def create
    @listing = Listing.new(create_listing_params)

    if @listing.save
      render json: @listing, status: :created, location: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update(update_listing_params)
      render json: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
  end

  private

  def create_listing_params
    params.require(:listing).permit(:title,
                                    :description,
                                    :start_date,
                                    :end_date,
                                    :listing_type,
                                    :location,
                                    :phone_number,
                                    :email,
                                    :user_name)
  end

  def update_listing_params
    params.require(:listing).permit(:title, :description, :start_date, :end_date, :listing_type, :location, :location, :email, :user_name)
  end
end
