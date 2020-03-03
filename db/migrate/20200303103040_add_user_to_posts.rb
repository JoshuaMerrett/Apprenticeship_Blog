class AddUserToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :user, foreign_key: true, null: => false
    add_column :posts, :user, null: false, :integer
  end
end
