class OldArticleSection < ActiveRecord::Base
  belongs_to :old_article
  belongs_to :section
end
