# This migration comes from refinery_akouo (originally 43)
class RemoveReplacementBudgets < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_budgets, :replacement_opportunities
    remove_column :refinery_journeyboard_budgets, :replacement_sold

    remove_column :refinery_journeyboard_budgets, :maintenance_opportunities
    remove_column :refinery_journeyboard_budgets, :maintenance_sold

    remove_column :refinery_journeyboard_budgets, :repair_opportunities
    remove_column :refinery_journeyboard_budgets, :repair_sold

    remove_column :refinery_journeyboard_budgets, :specialty_opportunities
    remove_column :refinery_journeyboard_budgets, :specialty_sold

    remove_column :refinery_journeyboard_budgets, :replacement_dollars_sold
  end
end