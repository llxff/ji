class Story < ActiveRecord::Base
  belongs_to :story_category

  as_enum :risk, { low_risk: 0, medium_risk: 1, hight_risk: 3 }
  as_enum :status, { new_status: 0, in_progress: 1, finished: 2, delivered: 3, rejected: 4, accepted: 5 }

  attr_accessible :description, :name
end
