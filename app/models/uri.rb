class Uri < ActiveRecord::Base
  translates :name, :description

  has_and_belongs_to_many :sections

  acts_as_list
end
