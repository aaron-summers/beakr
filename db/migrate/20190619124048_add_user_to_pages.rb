class AddUserToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :user, foreign_key: true
  end
end
