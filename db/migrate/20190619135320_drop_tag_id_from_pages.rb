class DropTagIdFromPages < ActiveRecord::Migration[5.2]
  def change
    remove_column :pages, :tag_id
  end
end
