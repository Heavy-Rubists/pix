class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.bigint :photo_id, null: false
      t.references :user
      t.timestamps
    end
  end
end
