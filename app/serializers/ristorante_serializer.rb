class RistoranteSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :reviews
  belongs_to :location 
end
