class Plant < ApplicationRecord
  belongs_to :garden # Creates a validation && gives the access to the garden with plant.garden
  has_many :plant_tags, dependent: :destroy # plant.plant_tags
  has_many :tags, through: :plant_tags # plant.tags
end
