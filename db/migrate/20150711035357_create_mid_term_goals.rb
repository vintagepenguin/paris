class CreateMidTermGoals < ActiveRecord::Migration
  def change
    create_table :mid_term_goals do |t|
      t.stringstart_date :name
      t.datetime :end_date
      t.boolean :is_achieved
      t.boolean :was_adjusted
      t.boolean :on_pace
      t.references :long_term_goal, index: true
      t.boolean :is_current_goal

      t.timestamps
    end
  end
end
