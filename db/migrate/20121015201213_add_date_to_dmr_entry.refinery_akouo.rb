# This migration comes from refinery_akouo (originally 27)
class AddDateToDmrEntry < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_dmr_entries, :date, :date
  end
end