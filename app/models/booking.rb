class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :storage

  validates :storage, uniqueness: { scope: :user }
end
