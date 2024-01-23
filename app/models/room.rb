class Room < ApplicationRecord
    validates :name, presence: true
    validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
    has_many :bookings, dependent: :destroy
end
