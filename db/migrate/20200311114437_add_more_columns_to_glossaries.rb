class AddMoreColumnsToGlossaries < ActiveRecord::Migration[6.0]
  def change
    add_column :glossaries, :body, :text
  end
end
