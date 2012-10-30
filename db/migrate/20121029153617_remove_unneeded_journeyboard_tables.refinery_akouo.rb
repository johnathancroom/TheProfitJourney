# This migration comes from refinery_akouo (originally 37)
class RemoveUnneededJourneyboardTables < ActiveRecord::Migration
  def up
    drop_table :refinery_journeyboard_dmr_comfort_advisors
    drop_table :refinery_journeyboard_dmr_comfort_advisor_entries
    drop_table :refinery_journeyboard_dmr_entries
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end