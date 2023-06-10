class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.references :household, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.decimal :total_income
      t.decimal :total_expense

      t.timestamps
    end
  end
end
