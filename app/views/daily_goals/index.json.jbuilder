json.array!(@daily_goals) do |daily_goal|
  json.extract! daily_goal, :id, :task, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :is_current_goal
  json.url daily_goal_url(daily_goal, format: :json)
end
