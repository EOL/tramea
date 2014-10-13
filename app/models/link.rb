class Link < ActiveRecord::Base
  belongs_to :source
  acts_as_list scope: :source
end
