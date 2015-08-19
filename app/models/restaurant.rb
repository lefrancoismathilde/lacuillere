class Restaurant < ActiveRecord::Base
  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent :destroy
end
