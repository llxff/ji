class StoryCategory < ActiveRecord::Base
  has_many :stories

  attr_accessible :name

  validates_presence_of :name
end
