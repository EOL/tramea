class Node < ActiveRecord::Base
  belongs_to :dataset
  belongs_to :synth

  has_many :associations, as: :parent

  acts_as_tree dependent: :destroy

  # NOTE: Yes, this is HUGE and obnoxious. But I do believe this is is the best
  # way to deal with ranks. :\
  enum rank: %q[
    kingdom phylum class order family superfamily genus species subspecies
  ].map(&:to_sym)
end
