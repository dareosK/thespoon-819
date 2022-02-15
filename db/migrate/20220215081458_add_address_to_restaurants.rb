class AddAddressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    # You need to write this migration yourself
    add_column :restaurants, :address, :string
    # look up alternatives to add_column 😉
  end
end
