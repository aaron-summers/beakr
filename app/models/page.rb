class Page < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
end
