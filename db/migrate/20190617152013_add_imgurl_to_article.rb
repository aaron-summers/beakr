class AddImgurlToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :imgurl, :text
  end
end
