class CreateBudgetGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_goals do |t|
      t.references :budget, null: false, foreign_key: true
      t.decimal :goal_amount
      t.string :title
      t.text :description
      t.date :target_date

      t.timestamps
    end
  end
end
