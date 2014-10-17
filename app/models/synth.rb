class Synth < ActiveRecord::Base
  has_many :associations, as: :parent
  has_many :nodes
  has_many :partners, through: :nodes
end
