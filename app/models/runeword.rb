class Runeword < ActiveRecord::Base
  has_and_belongs_to_many :runes
  has_and_belongs_to_many :properties
  has_and_belongs_to_many :item_types
end
