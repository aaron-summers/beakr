class RemoveSummaryFromArticle < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :summary, :text
  end
end
