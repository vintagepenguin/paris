class Strength < ActiveRecord::Base
  belongs_to :daily_goal
  belongs_to :long_term_goal
  belongs_to :mid_term_goal
  belongs_to :weekly_goal
  belongs_to :category
end
