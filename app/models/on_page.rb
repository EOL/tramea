class OnPage < ActiveRecord::Base
  belongs_to :page
  belongs_to :content, polymorphic: true

  has_many :traits, as: :subject

  acts_as_list scope: [:page]
end
