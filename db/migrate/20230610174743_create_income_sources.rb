class CreateIncomeSources < ActiveRecord::Migration[7.0]
  def change
    create_table :income_sources do |t|
      t.references :budget, null: false, foreign_key: true
      t.text :description
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
