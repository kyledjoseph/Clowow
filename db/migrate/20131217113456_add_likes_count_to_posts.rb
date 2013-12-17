class AddLikesCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :likes_count, :integer, null: false, default: 0
    Like.counter_culture_fix_counts only: :post
  end
end
