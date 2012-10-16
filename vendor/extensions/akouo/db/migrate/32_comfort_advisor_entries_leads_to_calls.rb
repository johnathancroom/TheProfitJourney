class ComfortAdvisorEntriesLeadsToCalls < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_dmr_comfort_advisor_entries, :leads_run, :calls_run
    rename_column :refinery_journeyboard_dmr_comfort_advisor_entries, :leads_sold, :calls_sold
  end
end