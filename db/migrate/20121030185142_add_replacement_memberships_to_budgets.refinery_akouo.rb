# This migration comes from refinery_akouo (originally 41)
class AddReplacementMembershipsToBudgets < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_budgets, :replacement_membership_opportunities, :integer, :default => 0
    add_column :refinery_journeyboard_budgets, :replacement_memberships_sold, :integer, :default => 0
  end
end