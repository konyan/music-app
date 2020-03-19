class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.timestamp :dob
      t.string :photo_url
      t.string :youth_name
      t.string :bio
      t.string :born_city
    end
  end
end
