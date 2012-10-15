class RenameSalesToEntriesForComfortAdvisors < ActiveRecord::Migration
  def change
    rename_table :refinery_journeyboard_dmr_comfort_advisor_sales, :refinery_journeyboard_dmr_comfort_advisor_entries
  end
end