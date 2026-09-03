class AddPinnedToMicroposts < ActiveRecord::Migration[8.1]
  def change
    add_column :microposts, :pinned, :boolean ,default: false
  end
end
