

class Activity < ActiveRecord::Base
  acts_as_list :column => "position"
end
