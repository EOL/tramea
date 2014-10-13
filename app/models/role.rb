class Role < ActiveRecord::Base
  has_many :collection_attributions
end
