class RemoveUserFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :user, :integer, null: false
  end
end
