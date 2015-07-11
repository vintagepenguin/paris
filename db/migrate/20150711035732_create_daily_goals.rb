class CreateDailyGoals < ActiveRecord::Migration
  def change
    create_table :daily_goals do |t|
      t.string :task
      t.references :long_term_goal, index: true
      t.references :mid_term_goal, index: true
      t.references :weekly_goal, index: true
      t.date :date_of_day
      t.string :time
      t.references :category, index: true
      t.boolean :is_current_goal

      t.timestamps
    end
  end
end
