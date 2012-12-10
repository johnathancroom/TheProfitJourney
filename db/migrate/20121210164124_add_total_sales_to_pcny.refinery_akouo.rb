# This migration comes from refinery_akouo (originally 61)
class AddTotalSalesToPcny < ActiveRecord::Migration
  def change
    add_column :pcny, :ts, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end