class FixTypoInJourneyboardBudgets < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_budgets, :repair_conversion_raio, :repair_conversion_ratio
  end
end