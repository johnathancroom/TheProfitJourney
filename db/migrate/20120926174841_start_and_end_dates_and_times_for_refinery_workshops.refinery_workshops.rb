# This migration comes from refinery_workshops (originally 6)
class StartAndEndDatesAndTimesForRefineryWorkshops < ActiveRecord::Migration
  def change
    rename_column :refinery_workshops, :date, :start_date
    change_column :refinery_workshops, :start_date, :date
    add_column :refinery_workshops, :end_date, :date
    add_column :refinery_workshops, :start_time, :time
    add_column :refinery_workshops, :end_time, :time
  end
end
