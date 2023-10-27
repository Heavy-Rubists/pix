class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.text :description
      t.text :as_url, null: false
      t.date :upload_date, null: false
      t.references :user
      t.timestamps
    end
  end
end
