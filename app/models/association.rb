class Association < ActiveRecord::Base
  acts_as_list scope: [:parent]
end
