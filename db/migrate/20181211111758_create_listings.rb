class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :start_date
      t.string :end_date
      t.string :listing_type
      t.string :location

      t.timestamps
    end
  end
end
