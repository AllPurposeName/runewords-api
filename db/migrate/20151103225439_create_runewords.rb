class CreateRunewords < ActiveRecord::Migration[4.2]
  def change
    create_table :runewords do |t|
      t.string :name
      t.integer :character_level
      t.boolean :ladder_only

      t.timestamps null: false
    end
  end
end
