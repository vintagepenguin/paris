class CreateImproveOns < ActiveRecord::Migration
  def change
    create_table :improve_ons do |t|
      t.text :description
      t.references :daily_goal, index: true
      t.references :long_term_goal, index: true
      t.references :mid_term_goal, index: true
      t.references :weekly_goal, index: true
      t.date :date_of_day
      t.string :time
      t.references :category, index: true
      t.boolean :used_before

      t.timestamps
    end
  end
end
