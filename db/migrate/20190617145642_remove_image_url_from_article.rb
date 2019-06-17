class RemoveImageUrlFromArticle < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :image_url, :text
  end
end
