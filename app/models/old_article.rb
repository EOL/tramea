class OldArticle < Article
  set_table_name "old_articles"

  has_many :old_article_sections
  has_many :sections, through: :old_article_sections
end
