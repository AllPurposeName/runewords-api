class CreateProperties < ActiveRecord::Migration[4.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
