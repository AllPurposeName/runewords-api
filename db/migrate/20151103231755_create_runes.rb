class CreateRunes < ActiveRecord::Migration[4.2]
  def change
    create_table :runes do |t|
      t.string :name
      t.integer :character_level

      t.timestamps null: false
    end
  end
end
