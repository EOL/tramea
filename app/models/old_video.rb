class OldVideo < ActiveRecord::Base
  belongs_to :video
  belongs_to :javascript
  belongs_to :license
  belongs_to :stylesheet

  # TODO - extract this to abstract Medium class:
  has_many :associations, as: :child
  has_many :translations
  has_many :literature_references

  has_many :collection_attributions, as: :medium
  has_many :literature_references, as: :parent
end
