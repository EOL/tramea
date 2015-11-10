class Map < ActiveRecord::Base
  belongs_to :javascript
  belongs_to :license
  belongs_to :stylesheet

  # TODO - extract this to abstract Medium class:
  has_many :on_pages, as: :content
  has_many :literature_references, as: :parent
  has_many :translations, as: :of_medium

  has_many :attributions, as: :medium
  has_many :literature_references, as: :parent
  has_many :old_maps
end
