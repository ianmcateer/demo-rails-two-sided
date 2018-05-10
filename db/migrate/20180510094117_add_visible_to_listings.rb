class AddVisibleToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :visible, :boolean
  end
end
