class Litem < ActiveRecord::Base
  belongs_to :llist
  acts_as_list -> { :llist }
end
