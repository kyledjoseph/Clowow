class RemoveUnusedColumns < ActiveRecord::Migration
  def up
    remove_column :likes, :user_id
    remove_column :comments, :user_id
  end

  def down
    add_column :likes, :user_id, :integer
    add_column :comments, :user_id, :integer
  end
end
