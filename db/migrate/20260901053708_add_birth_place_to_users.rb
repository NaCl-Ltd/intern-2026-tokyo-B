class AddBirthPlaceToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :birth_place, :string
  end
end
