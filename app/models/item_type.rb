class ItemType < ActiveRecord::Base
  has_and_belongs_to_many :runewords
end
