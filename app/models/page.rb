class Page < ApplicationRecord
  has_many :likes
  has_many :articles, through: :likes
  
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true

  def self.sort_and_filter params
    pages = params[:tag_id] ? Page.where(tag_id: params[:tag_id]) : Page.all
    pages = params[:sort_by] ? (params[:sort_by] == 'ascending' ? pages.order(:title).reverse : pages.order(:title)) : pages
    pages
  end
end
