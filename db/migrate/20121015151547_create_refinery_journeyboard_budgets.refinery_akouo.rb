# This migration comes from refinery_akouo (originally 22)
class CreateRefineryJourneyboardBudgets < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_budgets do |t|

      t.decimal :replacement_dollars_sold, :precision => 19, :scale => 2, :default => 0.0
      t.integer :replacement_leads_run, :default => 0
      t.integer :replacement_leads_sold, :default => 0
      t.integer :replacement_closing_ratio, :default => 0
      t.decimal :replacement_replaced, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :replacement_installed, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :replacement_cogs, :precision => 19, :scale => 2, :default => 0.0

      t.integer :repair_calls, :default => 0
      t.integer :repair_warranty_calls, :default => 0
      t.decimal :repair_revenue, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :repair_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :repair_membership_opportunities, :default => 0
      t.integer :repair_memberships_sold, :default => 0
      t.integer :repair_opportunities, :default => 0
      t.integer :repair_sold, :default => 0
      t.integer :repair_conversion_raio, :default => 0
      t.decimal :repair_dollars_sold, :precision => 19, :scale => 2, :default => 0.0

      t.integer :maintenance_calls, :default => 0
      t.decimal :maintenance_revenue, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :maintenance_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :maintenance_membership_opportunities, :default => 0
      t.integer :maintenance_memberships_sold, :default => 0
      t.integer :maintenance_opportunities, :default => 0
      t.integer :maintenance_sold, :default => 0
      t.integer :maintenance_conversion_ratio, :default => 0
      t.decimal :maintenance_dollars_sold, :precision => 19, :scale => 2, :default => 0.0

      t.integer :specialty_calls, :default => 0
      t.decimal :specialty_revenue, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :specialty_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :specialty_membership_opportunities, :default => 0
      t.integer :specialty_memberships_sold, :default => 0
      t.integer :specialty_opportunities, :default => 0
      t.integer :specialty_sold, :default => 0
      t.integer :specialty_conversion_ratio, :default => 0
      t.decimal :specialty_dollars_sold, :precision => 19, :scale => 2, :default => 0.0

      t.integer :user_id

    end
  end
end