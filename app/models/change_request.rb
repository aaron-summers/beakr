class ChangeRequest < ApplicationRecord
  belongs_to :admin
  belongs_to :article
  belongs_to :user

  validates :title, presence: true, uniqueness :true
  validates :content, presence: true
end
