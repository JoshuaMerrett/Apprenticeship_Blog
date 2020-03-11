class ChangeNameToTitle < ActiveRecord::Migration[6.0]
  def up
    rename_column  :glossaries, :name, :title
  end

  def down
    rename_column  :glossaries, :title, :name
  end
end
