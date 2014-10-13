class Appearance < ActiveRecord::Base
  belongs_to :name
  belongs_to :publication
end
