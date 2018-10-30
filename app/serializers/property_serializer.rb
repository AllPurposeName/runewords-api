class PropertySerializer < ActiveModel::Serializer
  attributes(
    :category,
    :group,
    :name
  )
end
