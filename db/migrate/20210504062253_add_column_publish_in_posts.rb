class AddColumnPublishInPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :publish, :boolean, default: false
  end
end
