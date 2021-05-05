class AddCoverToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :cover_filename, :string
  end
end
