# This migration comes from refinery_akouo (originally 52)
class RemoveBacklogFromJourneyboardEntry < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_entries, :backlog
  end
end