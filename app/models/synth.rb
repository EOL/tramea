class Synth < ActiveRecord::Base
  has_many :associations, as: :parent
  has_many :concepts
  has_many :sources, through: :concepts
end
