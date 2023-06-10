class Budget < ApplicationRecord
  belongs_to :household
  has_many :expenses
  has_many :income_sources
  has_many :budget_goals
end
