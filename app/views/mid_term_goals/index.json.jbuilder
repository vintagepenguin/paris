json.array!(@mid_term_goals) do |mid_term_goal|
  json.extract! mid_term_goal, :id, :name, :end_date, :is_achieved, :was_adjusted, :on_pace, :long_term_goal_id, :is_current_goal
  json.url mid_term_goal_url(mid_term_goal, format: :json)
end
