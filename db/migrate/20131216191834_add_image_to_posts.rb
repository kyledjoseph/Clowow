class AddImageToPosts < ActiveRecord::Migration
  def change
    add_attachment :posts, :image
    remove_column :posts, :content
  end
end
