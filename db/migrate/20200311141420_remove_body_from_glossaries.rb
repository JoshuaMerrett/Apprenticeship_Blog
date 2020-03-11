class RemoveBodyFromGlossaries < ActiveRecord::Migration[6.0]
  def change
    remove_column :glossaries, :body, :text
  end
end
