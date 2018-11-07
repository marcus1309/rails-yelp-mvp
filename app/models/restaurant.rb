class Restaurant < ApplicationRecord
  valid_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: valid_categories }
end
