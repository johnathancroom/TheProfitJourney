# This migration comes from refinery_akouo (originally 14)
class CreateTechnicianTable < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_technicians do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
