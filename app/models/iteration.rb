class Iteration < ActiveRecord::Base
  attr_accessible :enddate, :startdate
  belongs_to :project
end
