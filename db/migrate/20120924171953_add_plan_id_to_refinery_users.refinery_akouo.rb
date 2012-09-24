# This migration comes from refinery_akouo (originally 2)
class AddPlanIdToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :plan_id, :integer
  end
end
