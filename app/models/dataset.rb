class Dataset < ActiveRecord::Base
  belongs_to :partner

  has_many :concepts
end
