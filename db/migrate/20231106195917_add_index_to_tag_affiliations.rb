class AddIndexToTagAffiliations < ActiveRecord::Migration[7.1]
  def change
    add_index :tag_affiliations, %i[photo_id tag_id], unique: true
  end
end
