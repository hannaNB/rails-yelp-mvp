class Restaurant < ApplicationRecord
    validates :name, uniqueness: true, presence: true, length: { minimum: 2 }
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}
    has_many :reviews, dependent: :destroy
end
