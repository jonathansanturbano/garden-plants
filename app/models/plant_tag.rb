class PlantTag < ApplicationRecord
  belongs_to :plant # 1/ Validation 2/ Gives plant_tag.plant
  belongs_to :tag  # 1/ Validation 2/ Gives plant_tag.garden
  validates :plant, uniqueness: { scope: :tag }
end
