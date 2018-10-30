class RunewordSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :character_level,
    :item_types,
    :ladder_only,
    :name,
    :properties,
    :runes
  )
  has_many :runes, serializer: RuneSerializer
  has_many :properties, serializer: PropertySerializer
  has_many :item_types, serializer: ItemTypeSerializer
end
