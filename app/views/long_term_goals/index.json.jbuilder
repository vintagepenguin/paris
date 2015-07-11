json.array!(@long_term_goals) do |long_term_goal|
  json.extract! long_term_goal, :id, :name, :start_date, :end_date, :is_achieved, :was_adjusted, :on_pace, :category_id
  json.url long_term_goal_url(long_term_goal, format: :json)
end
