class CreateWeeklyGoals < ActiveRecord::Migration
  def change
    create_table :weekly_goals do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_achieved
      t.boolean :was_adjusted
      t.boolean :on_pace
      t.references :long_term_goal, index: true
      t.references :mid_term_goal, index: true
      t.boolean :is_current_goal

      t.timestamps
    end
  end
end
