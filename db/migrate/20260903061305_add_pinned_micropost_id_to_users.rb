class AddPinnedMicropostIdToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :pinned_micropost_id, :integer
  end
end
