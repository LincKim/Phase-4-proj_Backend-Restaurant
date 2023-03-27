class Location < ApplicationRecord
    has_many :restaurants

    validates :county, presence: true
    validates :street, presence: true
end
