class Role < ActiveRecord::Base
  has_many :attributions
end
