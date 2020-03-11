class AddColumnsToGlossaries < ActiveRecord::Migration[6.0]
  def change
    add_column :glossaries, :letter, :string
    add_column :glossaries, :name, :text
  end
end
