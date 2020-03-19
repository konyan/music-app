class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :description
      t.string :translate_text
      t.integer :length
      t.integer :category_id
      t.integer :artist_id
    end
  end
end
