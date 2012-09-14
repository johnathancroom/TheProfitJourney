class AddWorkshopIdToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :workshop_id, :integer
  end
end
