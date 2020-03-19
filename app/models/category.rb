class Category < ApplicationRecord

  has_many :tracks

  validates :name, presence:true

end