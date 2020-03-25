class UpdateCpdsColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :cpds, :description, :text

    add_column :cpds, :slug, :string
    add_index :cpds, :slug, unique: true
  end
end
