class RenameKindToContent < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :kind, :content
  end
end
