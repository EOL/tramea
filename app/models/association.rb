class Association < ActiveRecord::Base
  acts_as_list scope: [:parent]

  belongs_to :parent, polymorphic: true
  belongs_to :child, polymorphic: true

  has_many :traits, as: :subject
end
