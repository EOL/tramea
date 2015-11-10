class Name < ActiveRecord::Base
  has_many :appearances
  has_many :on_pages, as: :child
  has_many :literature_references, as: :parent
end
