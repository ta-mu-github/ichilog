class ChangeColumnNull < ActiveRecord::Migration[6.0]

  change_column :posts, :title, :string, null: false
  change_column :posts, :category, :string, null: false
  change_column :posts, :content, :string, null: false

end
