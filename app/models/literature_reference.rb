class LiteratureReference < ActiveRecord::Base
  belongs_to :parent, polymorphic: true
  scope :bibliographic_citation, -> { where(bibliographic_citation: true) }
end
