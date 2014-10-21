class ArticleSection < ActiveRecord::Base
  belongs_to :article
  belongs_to :section

  scope :primary, -> { where(primary: true) }
end
