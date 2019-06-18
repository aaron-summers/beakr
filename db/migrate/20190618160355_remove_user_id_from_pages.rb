class RemoveUserIdFromPages < ActiveRecord::Migration[5.2]
  def change
    remove_column :pages, :user_id
  end
end
