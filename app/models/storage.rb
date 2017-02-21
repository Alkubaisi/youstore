class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_attachment :photo
  validates :title, presence: true
  validates :size, presence: true
  validates :description, presence: true

end
