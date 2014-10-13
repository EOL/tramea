class Name < ActiveRecord::Base
  has_many :appearances
  has_many :associations, as: :child
  has_many :literature_references, as: :parent
end
