class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :photo_id, :integer
    add_column :photos, :user_id, :integer
  end
end
