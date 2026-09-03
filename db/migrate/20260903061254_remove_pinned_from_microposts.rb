class RemovePinnedFromMicroposts < ActiveRecord::Migration[8.1]
  def change
    remove_column :microposts, :pinned, :boolean
  end
end
