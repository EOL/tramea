class Dataset < ActiveRecord::Base
  belongs_to :partner
  belongs_to :license # If defined, this is a dataset with traits.

  has_many :nodes
end
