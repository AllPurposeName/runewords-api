class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :runewords, :runes do |t|
      # t.index [:runeword_id, :rune_id]
      # t.index [:rune_id, :runeword_id]
    end
  end
end
