class User < ApplicationRecord
     
    has_many :ristorantes, through: :reviews

    has_secure_password  # hashing of a password 123456 => skdjfksdvj@jnfkdjnsjdf

    # fields
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
     
 
end
