# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Listing.create(
  title: 'Listing 1',
  description: 'Description',
  start_date: 'Start Date',
  end_date: 'End Date',
  listing_type: 'Listing Type',
  location: 'Location',
  phone_number: '1234',
  email: 'email@example.com',
  user_name: 'Sam'
)

Listing.create(
  title: 'Listing 2',
  description: 'Description',
  start_date: 'Start Date',
  end_date: 'End Date',
  listing_type: 'Listing Type',
  location: 'Location',
  phone_number: '1234',
  email: 'email@example.com',
  user_name: 'Sam'
)
