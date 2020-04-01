class Track < ApplicationRecord
  belongs_to :artist
  belongs_to :category
  has_one_attached :track_url
  has_one_attached :image_url
  has_one_attached :translate_text

  validates :name, presence: true
  validates :length, presence: true
  validates :description, presence: true
  validates :translate_text, presence: true
  validates :translate_text, attached: true,
            size: { less_than: 1.megabytes , message: 'is not given between size' }
  validates :category_id, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true
  validates :image_url, attached: true,
            content_type: [:png, :jpg, :jpeg],
            size: { less_than: 10.megabytes , message: 'is not given between size' }
  validates :track_url, presence: true
  validates :track_url, attached: true,
            content_type: ['audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio'],
            size: { less_than: 40.megabytes , message: 'is not given between size' }

end