class RemoveUsersFromPosts < ActiveRecord::Migration[6.1]
  def change
      remove_column :posts, :users_id, :integer
      add_reference :posts, :user, null: false, foreign_key: true
  end
end
