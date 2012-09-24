class AddPlanIdToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :plan_id, :integer
  end
end
