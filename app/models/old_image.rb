class OldImage < ActiveRecord::Base
  belongs_to :image
  belongs_to :license

  # TODO - extract this to abstract Medium class:
  has_many :associations, as: :child
  has_many :translations
  has_many :literature_references

  has_many :collection_attributions, as: :medium
  has_many :literature_references, as: :parent
  has_many :old_images
end
