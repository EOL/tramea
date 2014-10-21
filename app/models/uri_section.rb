class UriSection < ActiveRecord::Base
  belongs_to :uri
  belongs_to :section

  scope :primary, -> { where(primary: true) }
end

