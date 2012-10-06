class AddColumnsToJourneyboardEntries < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_entries, :commission, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :todays_pay, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :revenue, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :other_cost, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :add_on, :integer
    add_column :refinery_journeyboard_entries, :drains, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :opportunities, :integer
    add_column :refinery_journeyboard_entries, :tickets, :integer
    add_column :refinery_journeyboard_entries, :hours, :decimal, :precision => 19, :scale => 2
    add_column :refinery_journeyboard_entries, :agreement_1, :integer
    add_column :refinery_journeyboard_entries, :agreement_2, :integer
    add_column :refinery_journeyboard_entries, :agreement_3, :integer
    add_column :refinery_journeyboard_entries, :agreement_4, :integer
  end
end