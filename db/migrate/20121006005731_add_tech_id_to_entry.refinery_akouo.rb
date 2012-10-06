# This migration comes from refinery_akouo (originally 15)
class AddTechIdToEntry < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_entries, :technician_id, :integer
  end
end