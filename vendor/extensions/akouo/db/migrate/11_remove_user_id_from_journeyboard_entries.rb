class RemoveUserIdFromJourneyboardEntries < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_entries, :user_id
  end
end