# This migration comes from refinery_akouo (originally 23)
class CreateRefineryJourneyboardDmrComfortAdvisors < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_dmr_comfort_advisors do |t|

      t.string :name

      t.integer :user_id

    end
  end
end