class AddBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :total_expenses, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_budgets, :total_operating_profit, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_budgets, :ytd_gross_margin, :integer, :default => 0
  end
end