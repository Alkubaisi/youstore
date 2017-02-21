class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_attachment :photo
<<<<<<< HEAD
=======
  validates :photo, presence: true
>>>>>>> 1a8fab4b13c7852cfcd7c6ca0037decdb43940fb
  validates :title, presence: true
  validates :size, presence: true
  validates :description, presence: true

end
