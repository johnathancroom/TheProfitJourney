class RemoveBacklogFromJourneyboardEntry < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_entries, :backlog
  end
end