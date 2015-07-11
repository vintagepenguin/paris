class WeeklyGoal < ActiveRecord::Base
  belongs_to :long_term_goal
  belongs_to :mid_term_goal
end
