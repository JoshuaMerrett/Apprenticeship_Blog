class CreateCpds < ActiveRecord::Migration[6.0]
  def change
    create_table :cpds do |t|

      t.date :date
      t.string :title
      t.text :description
      t.text :link

      t.timestamps
    end
  end
end
