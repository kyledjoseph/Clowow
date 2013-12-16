class AddEmailToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :email, :string
    remove_column :posts, :user_id
  end

  def down
    remove_column :posts, :email
    add_column :posts, :user_id, :integer
  end
end
