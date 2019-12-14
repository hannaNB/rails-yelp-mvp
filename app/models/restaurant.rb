class Restaurant < ApplicationRecord
    validates :name, uniqueness: true, presence: true, length: { minimum: 2 }
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :category, presence: true
    has_many :reviews, dependent: :destroy
end
