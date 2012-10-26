# This migration comes from refinery_akouo (originally 36)
class JourneyboardEntryAddonToAccessories < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :add_on, :accessories
    change_column :refinery_journeyboard_entries, :accessories, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end