class Userstory < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :tasks
end
