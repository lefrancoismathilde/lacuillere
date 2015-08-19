class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: Restaurant::CATEGORIES, allow_nil: false }
  has_many :reviews, dependent: :destroy
end
