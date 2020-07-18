class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :self_introduction, :string
  end
end
