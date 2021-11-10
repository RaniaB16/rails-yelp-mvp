class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { :in => 0..5 }, presence: { message: " must be within 0-5" }
  validates :rating, presence: { message: "Cannot be blank" }
  validates :rating, numericality: { only_integer: true }
end
