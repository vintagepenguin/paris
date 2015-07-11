json.array!(@improve_ons) do |improve_on|
  json.extract! improve_on, :id, :description, :daily_goal_id, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :used_before
  json.url improve_on_url(improve_on, format: :json)
end
