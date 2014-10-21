class Uri < ActiveRecord::Base
  translates :name, :description

  acts_as_list

  has_many :predicates, class_name: "Uri", foreign_key: "predicate_uri_id"
  has_many :objects, class_name: "Uri", foreign_key: "object_uri_id"
  has_many :original_units, class_name: "Uri",
    foreign_key: "original_units_uri_id"

  has_many :uri_sections
  has_many :sections, through: :uri_sections

  def to_s
    string
  end
end
