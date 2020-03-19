class Artist < ApplicationRecord

  has_many :tracks, dependent: :destroy

  validates :name, presence: true,
            length:{minimum:3 , maximum: 50}
  validates :photo_url, presence: true
  validates :dob, presence: true
  validates :youth_name, presence: true
  validates :born_city, presence: true
  validates :bio, presence: true,
            length:{minimum:20 , maximum: 1000}



end