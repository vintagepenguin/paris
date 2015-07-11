json.array!(@weekly_goals) do |weekly_goal|
  json.extract! weekly_goal, :id, :name, :start_date, :end_date, :is_achieved, :was_adjusted, :on_pace, :long_term_goal_id, :mid_term_goal_id, :is_current_goal
  json.url weekly_goal_url(weekly_goal, format: :json)
end
