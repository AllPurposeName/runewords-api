class RunewordSerializer < ActiveModel::Serializer
  attributes :name, :ladder_only, :character_level, :item_types, :runes, :properties
  has_many :runes, serializer: RuneSerializer
  has_many :properties, serializer: PropertySerializer
  has_many :item_types, serializer: ItemTypeSerializer
end
