# This migration comes from refinery_akouo (originally 1)
class AddSubscriptionIdToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :subscription_id, :integer
  end
end
