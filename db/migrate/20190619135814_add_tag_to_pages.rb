class AddTagToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :tag, foreign_key: true
  end
end
