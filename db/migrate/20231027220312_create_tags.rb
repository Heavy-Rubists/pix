class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :content, null: false
      t.timestamps
    end

    add_index :tags, :content, unique: true

    create_table :tag_affiliations do |t|
      t.references :photo, :tag
      t.timestamps
    end
  end
end
