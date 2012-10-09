class ChangeOtherCostToPartsForJourneyboardEntries < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :other_cost, :parts
  end
end