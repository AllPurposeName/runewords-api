class CreateRunes < ActiveRecord::Migration
  def change
    create_table :runes do |t|
      t.string :name
      t.integer :character_level

      t.timestamps null: false
    end
  end
end
