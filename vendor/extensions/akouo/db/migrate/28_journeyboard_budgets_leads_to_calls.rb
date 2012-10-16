class JourneyboardBudgetsLeadsToCalls < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_budgets, :replacement_leads_run, :replacement_calls_run
    rename_column :refinery_journeyboard_budgets, :replacement_leads_sold, :replacement_calls_sold
  end
end