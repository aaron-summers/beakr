class Article < ApplicationRecord
  belongs_to :admin
  belongs_to :tag
  belongs_to :user
  has_many :change_request
  has_many :user
  has_many :tag

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
