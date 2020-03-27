class Track < ApplicationRecord
  belongs_to :artist
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :translate_text, presence: true
  validates :track_url, presence: true
  validates :length, presence: true
  validates :category_id, presence: true
  validates :artist_id, presence: true

end