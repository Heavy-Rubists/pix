class AddForeignKeyToCommentsPhotoId < ActiveRecord::Migration[7.1]
  def change
    change_column_null :comments, :photo_id, false
    add_foreign_key :comments, :photos, column: :photo_id
    add_index :comments, :photo_id
  end
end
