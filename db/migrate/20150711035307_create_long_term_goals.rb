class CreateLongTermGoals < ActiveRecord::Migration
  def change
    create_table :long_term_goals do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_achieved
      t.boolean :was_adjusted
      t.boolean :on_pace
      t.references :category, index: true

      t.timestamps
    end
  end
end
