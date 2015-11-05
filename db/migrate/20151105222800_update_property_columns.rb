class UpdatePropertyColumns < ActiveRecord::Migration
  def change
    add_column :properties, :group, :string
    add_column :properties, :category, :string
  end
end
