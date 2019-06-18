class Page < ApplicationRecord
  has_many :likes
  belongs_to :user

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
end
