class Plant < ApplicationRecord
  belongs_to :garden # Creates a validation && gives the access to the garden with plant.garden
end
