class Restaurant < ApplicationRecord
  valid_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
end
