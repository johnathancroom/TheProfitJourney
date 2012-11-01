# This migration comes from refinery_akouo (originally 47)
class AddTypeToJourneyboardEmployee < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_employees, :type, :integer
  end
end