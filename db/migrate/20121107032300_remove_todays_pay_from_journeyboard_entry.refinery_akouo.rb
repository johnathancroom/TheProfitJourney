# This migration comes from refinery_akouo (originally 51)
class RemoveTodaysPayFromJourneyboardEntry < ActiveRecord::Migration
  def change
    remove_column :refinery_journeyboard_entries, :todays_pay
  end
end