class AddListings < ActiveRecord::Migration[5.2]
  def change
    add_column :phone, :email, :user_name
  end
end
