# This migration comes from refinery_akouo (originally 24)
class CreateRefineryJourneyboardDmrComfortAdvisorSales < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_dmr_comfort_advisor_sales do |t|

      t.decimal :sold, :precision => 19, :scale => 2, :default => 0.0
      t.integer :leads_run, :default => 0
      t.integer :leads_sold, :default => 0

      t.integer :comfort_advisor_id

    end
  end
end