class Synth < ActiveRecord::Base
  belongs_to :superceded_by, class_name: "Synth"
  has_many :associations, as: :parent
  has_many :nodes
  has_many :partners, through: :nodes
end
