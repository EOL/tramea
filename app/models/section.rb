class Section < ActiveRecord::Base
  acts_as_tree order: 'position'

  has_and_belongs_to_many :uris
end
