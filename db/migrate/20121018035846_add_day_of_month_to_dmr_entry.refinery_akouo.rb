# This migration comes from refinery_akouo (originally 33)
class AddDayOfMonthToDmrEntry < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_dmr_entries, :day_of_month, :integer
  end
end