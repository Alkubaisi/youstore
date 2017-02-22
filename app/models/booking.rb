class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :storage

  validates :storage, uniqueness: { scope: :user }
  validates :price, presence: true


  validate :expiration_date_cannot_be_in_the_past
  def expiration_date_cannot_be_in_the_past
    errors.add(:from, "can't be in the past") if
      !from.blank? and from < Date.today
  end


end
