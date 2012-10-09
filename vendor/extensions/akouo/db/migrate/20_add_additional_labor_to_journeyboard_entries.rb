class AddAdditionalLaborToJourneyboardEntries < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_entries, :additional_labor, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end