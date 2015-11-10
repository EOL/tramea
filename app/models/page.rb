class Page < ActiveRecord::Base
  belongs_to :merged_to, class_name: "Page"
  has_many :on_pages, as: :parent
  has_many :nodes
  has_many :partners, through: :nodes
end
