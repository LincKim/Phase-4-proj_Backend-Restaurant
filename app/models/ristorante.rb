class Ristorante < ApplicationRecord
  belongs_to :location
  has_many :reviews 
  has_many :users, through: :reviews 

  validates :name, presence: true 
end
