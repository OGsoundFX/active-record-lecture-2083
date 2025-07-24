class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :rating, :integer, null: false, default: 0
  end
end
