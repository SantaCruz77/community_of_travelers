class AddImageIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :image_id, :string
  end
end
