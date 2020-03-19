class Track < ApplicationRecord
  belongs_to :artist
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true,
            length:{minimum:3 , maximum: 50}
  validates :translate_text, presence: true,
              length:{minimum:3 , maximum: 50}
  validates :length, presence: true
  validates :category_id, presence: true
  validates :artist_id, presence: true

end