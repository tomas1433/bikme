class AddUseToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :use, :string
  end
end
