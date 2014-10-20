class Article < ActiveRecord::Base
  belongs_to :javascript
  belongs_to :license
  belongs_to :stylesheet

  # TODO - extract this to abstract Medium class:
  has_many :associations
  has_many :literature_references
  has_many :translations, as: :of_medium

  has_many :collection_attributions, as: :medium
  has_many :literature_references, as: :parent
  has_many :sections, through: :article_sections
  has_many :old_articles

end
