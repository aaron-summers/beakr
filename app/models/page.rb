class Page < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
end
