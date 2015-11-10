class OnPage < ActiveRecord::Base
  belongs_to :parent, polymorphic: true
  belongs_to :child, polymorphic: true

  has_many :traits, as: :subject

  acts_as_list scope: [:parent]
end
