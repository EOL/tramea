class Attribution < ActiveRecord::Base
  belongs_to :medium, polymorphic: true
  belongs_to :role
end
