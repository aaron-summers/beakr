class Page < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :tag

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true

  def tag_name=(name)
    self.tag = Tag.find_or_create_by(name: name)
  end

  def tag_name
     self.tag ? self.tag.name : nil
  end
end
