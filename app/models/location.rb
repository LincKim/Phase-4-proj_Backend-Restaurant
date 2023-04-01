class Location < ApplicationRecord
    has_many :ristorantes


    validates :county, presence: true
    validates :street, presence: true
end
