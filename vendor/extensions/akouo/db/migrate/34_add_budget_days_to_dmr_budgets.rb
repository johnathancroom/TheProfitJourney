class AddBudgetDaysToDmrBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :budget_days, :integer, :default => 20
  end
end