class Review < ApplicationRecord
  belongs_to :storage
  validates :content, length: { minimum: 20 }
end
