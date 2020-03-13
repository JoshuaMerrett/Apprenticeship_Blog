class AddNullToPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :user, :integer, null: false
  end
end
