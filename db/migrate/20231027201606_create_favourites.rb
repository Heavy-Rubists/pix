class CreateFavourites < ActiveRecord::Migration[7.1]
  def change
    create_table :favourites do |t|
      t.references :user, :photo
      t.timestamps
    end

    add_index :favourites, %i[user_id photo_id], unique: true
  end
end
