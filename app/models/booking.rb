class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :storage

  validates :user, presence: true
  validates :storage, uniqueness: { scope: :booking }
end
