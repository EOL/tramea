class Translation < ActiveRecord::Base
  belongs_to :of_medium, polymorphic: true
  belongs_to :to_medium, polymorphic: true
  # TODO - I'm not sure how to get the "to_medium" media to point back to its
  # translated_from.
end
