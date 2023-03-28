class LocationSerializer < ActiveModel::Serializer
  attributes :id, :county, :street

  # has_many :restaurants
end
