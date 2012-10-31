# This migration comes from refinery_akouo (originally 42)
class AddMissingReplacementBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :replacement_opportunities, :integer, :decimal => 0
    add_column :refinery_journeyboard_budgets, :replacement_sold, :integer, :decimal => 0

    remove_column :refinery_journeyboard_budgets, :repair_dollars_sold
    remove_column :refinery_journeyboard_budgets, :specialty_dollars_sold
    remove_column :refinery_journeyboard_budgets, :maintenance_dollars_sold
  end
end