class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
  has_many :plants, dependent: :destroy # gives access to plants that belong to given garden with garden.plants
end
