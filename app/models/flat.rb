class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def geocode # the geocode method is added by the `geocoded_by :address`
  #   # Will run after validation (but before save)
  # end
end
