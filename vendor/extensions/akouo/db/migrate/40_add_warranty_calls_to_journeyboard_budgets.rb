class AddWarrantyCallsToJourneyboardBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :replacement_warranty_calls, :integer, :default => 0
    add_column :refinery_journeyboard_budgets, :maintenance_warranty_calls, :integer, :default => 0
    add_column :refinery_journeyboard_budgets, :specialty_warranty_calls, :integer, :default => 0
  end
end