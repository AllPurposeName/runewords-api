class CreateJoinTableRunewordsItemTypes < ActiveRecord::Migration
  def change
    create_join_table :runewords, :item_types do |t|
      # t.index [:runeword_id, :item_type_id]
      # t.index [:item_type_id, :runeword_id]
    end
  end
end
