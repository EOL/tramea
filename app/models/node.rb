class Node < ActiveRecord::Base
  acts_as_tree dependent: :destroy
  belongs_to :source
  belongs_to :synth
  has_many :associations, as: :parent
end
