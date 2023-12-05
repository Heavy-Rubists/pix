class RemoveDateFromPhotos < ActiveRecord::Migration[7.1]
  def change
    remove_column :photos, :upload_date
  end
end
