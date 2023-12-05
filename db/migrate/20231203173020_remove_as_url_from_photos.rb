class RemoveAsUrlFromPhotos < ActiveRecord::Migration[7.1]
  def change
    remove_column :photos, :as_url
  end
end
