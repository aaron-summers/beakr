class Admin < ApplicationRecord
  has_many :article
  has many :change_request
end
