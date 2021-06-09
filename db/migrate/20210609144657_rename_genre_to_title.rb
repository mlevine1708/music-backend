class RenameGenreToTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :genre, :title
  end
end
