# This migration comes from refinery_workshops (originally 7)
class AddWorkshopOverrideToUser < ActiveRecord::Migration
  def change
    add_column :refinery_users, :workshop_override, :boolean
  end
end