class AddArticlesForeignKeyToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_reference :admins, :article, foreign_key: true
  end
end
