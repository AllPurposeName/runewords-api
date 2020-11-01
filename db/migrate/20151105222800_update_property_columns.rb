class UpdatePropertyColumns < ActiveRecord::Migration[4.2]
  def change
    add_column :properties, :group, :string
    add_column :properties, :category, :string
  end
end
