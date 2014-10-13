class Stylesheet < ActiveRecord::Base
  has_many :articles
  has_many :maps
  has_many :sounds
  has_many :videos
  has_many :old_articles
  has_many :old_maps
  has_many :old_sounds
  has_many :old_videos
end
