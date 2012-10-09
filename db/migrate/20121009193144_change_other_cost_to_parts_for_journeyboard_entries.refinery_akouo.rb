# This migration comes from refinery_akouo (originally 19)
class ChangeOtherCostToPartsForJourneyboardEntries < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :other_cost, :parts
  end
end