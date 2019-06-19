class Tag < ApplicationRecord
  has_many :pages

  def page_ids=(ids)
    ids.each do |id|
      page = Page.find(id)
      self.pages << page
    end
  end
end
