class Page < ApplicationRecord
  has_many :likes
  has_many :articles, through: :likes
  
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
end
