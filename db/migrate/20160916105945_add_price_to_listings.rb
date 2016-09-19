class AddPriceToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :price, :decimal
  end
end
