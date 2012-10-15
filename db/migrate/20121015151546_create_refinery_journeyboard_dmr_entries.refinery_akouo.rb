# This migration comes from refinery_akouo (originally 21)
class CreateRefineryJourneyboardDmrEntries < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_dmr_entries do |t|

      t.decimal :replacement_replaced, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :replacement_intalled, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :replacement_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :replacement_backlog, :precision => 19, :scale => 2, :default => 0.0

      t.integer :repair_calls, :default => 0
      t.integer :repair_warranty_calls, :default => 0
      t.decimal :repair_revenue , :precision => 19, :scale => 2, :default => 0.0
      t.decimal :repair_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :repair_membership_opportunities, :default => 0
      t.integer :repair_memberships_sold, :default => 0
      t.integer :repair_opportunities, :default => 0
      t.integer :repair_sold, :default => 0
      t.decimal :repair_dollars_sold, :precison => 19, :scale => 2, :default => 0.0

      t.integer :maintenance_calls, :default => 0
      t.decimal :maintenance_revenue, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :maintenance_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :maintenance_membership_opportunities, :default => 0
      t.integer :maintenance_memberships_sold, :default => 0
      t.integer :maintenance_opportunities, :default => 0
      t.integer :maintenance_sold, :default => 0
      t.decimal :maintenance_dollars_sold, :precision => 19, :scale => 2, :default => 0.0

      t.integer :specialty_calls, :default => 0
      t.decimal :specialty_revenue, :precision => 19, :scale => 2, :default => 0.0
      t.decimal :specialty_cogs, :precision => 19, :scale => 2, :default => 0.0
      t.integer :specialty_membership_opportunities, :default => 0
      t.integer :specialty_memberships_sold, :default => 0
      t.integer :specialty_opportunities, :default => 0
      t.integer :specialty_sold, :default => 0
      t.decimal :specialty_dollars_sold, :precision => 19, :scale => 2, :default => 0.0

      t.integer :memberships_sold_by_csr, :default => 0
      t.integer :memberships_sold_new_systems, :default => 0
      t.integer :memberships_lost, :default => 0

      t.integer :comfort_advisor_sales_id

      t.integer :user_id

      t.timestamps
    end
  end
end
