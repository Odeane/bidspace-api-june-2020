class AddAddressDescriptionPrice < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :address, :string
    add_column :listings, :description, :text
    add_column :listings, :price, :integer
  end
end
