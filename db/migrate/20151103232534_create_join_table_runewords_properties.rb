class CreateJoinTableRunewordsProperties < ActiveRecord::Migration[4.2]
  def change
    create_join_table :runewords, :properties do |t|
      # t.index [:runeword_id, :property_id]
      # t.index [:property_id, :runeword_id]
    end
  end
end
