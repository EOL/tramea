class Concept < ActiveRecord::Base
  acts_as_tree dependent: :destroy
  belongs_to :source
end
