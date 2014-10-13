class Trait < ActiveRecord::Base
  acts_as_list

  belongs_to :metadata_for, class_name: "Trait"
  belongs_to :object_uri, class_name: "Uri"
  belongs_to :predicate_uri, class_name: "Uri"

  has_many :traits, as: :metadata_for # Metadata

  has_and_belongs_to_many :sections

  def object
    value || text || object_uri
  end
end
