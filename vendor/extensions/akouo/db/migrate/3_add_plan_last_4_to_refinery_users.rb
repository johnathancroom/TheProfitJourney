class AddPlanLast4ToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :plan_last_4, :string
  end
end
