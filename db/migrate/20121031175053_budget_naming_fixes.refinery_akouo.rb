# This migration comes from refinery_akouo (originally 45)
class BudgetNamingFixes < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_budgets, :replacement_calls_run, :replacement_calls

    add_column :refinery_journeyboard_budgets, :repair_calls_sold, :integer, :default => 0
    add_column :refinery_journeyboard_budgets, :maintenance_calls_sold, :integer, :default => 0
    add_column :refinery_journeyboard_budgets, :specialty_calls_sold, :integer, :default => 0

    remove_column :refinery_journeyboard_budgets, :replacement_installed
    remove_column :refinery_journeyboard_budgets, :replacement_replaced

    add_column :refinery_journeyboard_budgets, :replacement_accessories, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_budgets, :repair_accessories, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_budgets, :maintenance_accessories, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_budgets, :specialty_accessories, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end