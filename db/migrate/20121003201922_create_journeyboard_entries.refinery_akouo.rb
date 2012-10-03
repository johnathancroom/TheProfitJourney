# This migration comes from refinery_akouo (originally 10)
class CreateJourneyboardEntries < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_entries do |t|
      t.decimal :fuel_cost, :precision => 19, :scale => 2
      t.integer :profit_center_id
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
