class Image < ActiveRecord::Base
  belongs_to :license

  # TODO - extract this to abstract Medium class:
  has_many :on_pages, as: :content
  has_many :literature_references, as: :parent
  has_many :translations, as: :of_medium

  has_many :attributions, as: :medium
  has_many :literature_references, as: :parent
  has_many :old_images
end
