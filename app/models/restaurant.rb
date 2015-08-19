class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
end
