class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, format: { with: /[0-5]/, message: "Please enter a rating from 0 to 5" }
end
