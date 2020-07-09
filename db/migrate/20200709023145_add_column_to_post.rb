class AddColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :category, :string
    add_column :posts, :image, :string
    add_column :posts, :content, :string
  end
end
