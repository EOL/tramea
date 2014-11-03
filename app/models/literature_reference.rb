class LiteratureReference < ActiveRecord::Base
  belongs_to :parent, polymorphic: true

  acts_as_list scope: :parent
  scope :bibliographic_citation, -> { where(bibliographic_citation: true) }
end
