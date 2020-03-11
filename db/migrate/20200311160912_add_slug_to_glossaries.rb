class AddSlugToGlossaries < ActiveRecord::Migration[6.0]
  def change
    add_column :glossaries, :slug, :string
    add_index :glossaries, :slug, unique: true
  end
end
