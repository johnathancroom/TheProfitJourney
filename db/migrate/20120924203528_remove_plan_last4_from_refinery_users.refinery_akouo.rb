# This migration comes from refinery_akouo (originally 4)
class RemovePlanLast4FromRefineryUsers < ActiveRecord::Migration
  def change
    remove_column :refinery_users, :plan_last_4
  end
end
