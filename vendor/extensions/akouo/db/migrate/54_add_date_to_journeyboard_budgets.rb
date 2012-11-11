class AddDateToJourneyboardBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :date, :date
  end
end