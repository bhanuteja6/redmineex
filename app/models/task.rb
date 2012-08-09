class Task < ActiveRecord::Base
  attr_accessible :description, :taskid, :taskname
  belongs_to :userstrory
end
