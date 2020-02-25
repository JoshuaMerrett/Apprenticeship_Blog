class ChangeImageColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :image, :blob
  end
end
