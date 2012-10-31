class AddRevenueToBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :replacement_revenue, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end