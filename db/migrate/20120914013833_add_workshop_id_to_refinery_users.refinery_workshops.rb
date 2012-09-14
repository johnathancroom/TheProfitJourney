# This migration comes from refinery_workshops (originally 3)
class AddWorkshopIdToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :workshop_id, :integer
  end
end
