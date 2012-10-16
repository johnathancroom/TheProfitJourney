# This migration comes from refinery_akouo (originally 30)
class RemoveUselessJourneyboardBudgetsColumns < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_budgets, :replacement_closing_ratio
    remove_column :refinery_journeyboard_budgets, :repair_conversion_ratio
    remove_column :refinery_journeyboard_budgets, :maintenance_conversion_ratio
    remove_column :refinery_journeyboard_budgets, :specialty_conversion_ratio
  end
end