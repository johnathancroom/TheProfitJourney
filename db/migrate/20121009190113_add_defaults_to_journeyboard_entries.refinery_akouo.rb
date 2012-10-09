# This migration comes from refinery_akouo (originally 18)
class AddDefaultsToJourneyboardEntries < ActiveRecord::Migration
  def change
    do_change(::Refinery::Akouo::JourneyboardEntry, :refinery_journeyboard_entries)
  end

  def do_change(model, table)
    model.columns.each do |column|
      if column.name != "id"
        if column.type == :float or column.type == :decimal
          change_column table, column.name, :decimal, :precision => 19, :scale => 2, :default => "0.00"
        elsif column.type == :integer
          change_column table, column.name, :integer, :default => 0
        end
      end
    end
  end
end