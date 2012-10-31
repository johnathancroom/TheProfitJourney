class JourneyboardEntryMerge < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :tickets, :calls_run
    add_column :refinery_journeyboard_entries, :warranty_calls_run, :integer, :default => 0
    add_column :refinery_journeyboard_entries, :membership_opportunities, :integer, :default => 0
    add_column :refinery_journeyboard_entries, :backlog, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end