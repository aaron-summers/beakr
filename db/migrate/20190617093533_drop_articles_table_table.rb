class DropArticlesTableTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :articles_tables
  end
end
