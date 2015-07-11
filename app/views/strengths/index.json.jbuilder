json.array!(@strengths) do |strength|
  json.extract! strength, :id, :description, :daily_goal_id, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :used_before
  json.url strength_url(strength, format: :json)
end
