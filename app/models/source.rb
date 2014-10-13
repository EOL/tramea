class Source < ActiveRecord::Base
  has_many :concepts
  has_many :links

  # TODO: fix these arguments
  has_attached_file :icon,
    styles: { :medium => "300x300>", :thumb => "100x100>" },
    default_url: "/images/:style/missing.png"
end
