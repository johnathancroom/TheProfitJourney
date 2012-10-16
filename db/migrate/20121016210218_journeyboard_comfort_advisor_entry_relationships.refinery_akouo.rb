# This migration comes from refinery_akouo (originally 31)
class JourneyboardComfortAdvisorEntryRelationships < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_dmr_comfort_advisor_entries, :journeyboard_dmr_entry_id, :integer
  end
end