class ChangeListsToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_table :lists, :posts
  end
end
