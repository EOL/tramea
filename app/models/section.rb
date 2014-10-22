class Section < ActiveRecord::Base
  acts_as_tree order: 'position'

  has_many :article_sections
  has_many :articles, through: :article_sections
  has_many :old_article_sections
  has_many :old_articles, through: :old_article_sections
  has_many :uri_sections
  has_many :uris, through: :uri_sections
end
