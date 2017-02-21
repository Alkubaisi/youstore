class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_attachment :photo

  validates :photo, presence: true
 validates :city, presence: true
  validates :term, presence: true
  validates :title, presence: true
  validates :size, presence: true
    validates :price, presence: true
  validates :description, presence: true

end
