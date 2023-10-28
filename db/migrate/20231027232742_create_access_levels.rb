class CreateAccessLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :access_levels do |t|
      t.string :title, null: false
    end

    create_table :management_rights do |t|
      t.references :access_level, :user, null: false
    end
  end
end
