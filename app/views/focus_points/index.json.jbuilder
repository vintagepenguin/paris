json.array!(@focus_points) do |focus_point|
  json.extract! focus_point, :id, :description, :daily_goal_id, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :used_before
  json.url focus_point_url(focus_point, format: :json)
end
