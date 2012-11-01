class AddPlanOverrideToUser < ActiveRecord::Migration
  def change
    add_column :refinery_users, :plan_override, :boolean
  end
end
