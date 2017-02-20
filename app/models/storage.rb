class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy
  has_attachment :photo

  validates :title, presence: true, uniqueness: true
  validates :size, presence: true
  validates :description, presence: true

end
