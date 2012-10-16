module Refinery
  module Akouo
    class JourneyboardBudget < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_budgets'

      belongs_to :user, :class_name => 'Refinery::User'

      attr_accessible :replacement_dollars_sold, :replacement_calls_run, :replacement_calls_sold, :replacement_replaced, :replacement_installed, :replacement_cogs, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :repair_opportunities, :repair_dollars_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :maintenance_opportunities, :maintenance_sold, :maintenance_dollars_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :specialty_opportunities, :specialty_sold, :specialty_dollars_sold, :repair_sold

      validates_presence_of :replacement_dollars_sold, :replacement_calls_run, :replacement_calls_sold, :replacement_replaced, :replacement_installed, :replacement_cogs, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :repair_opportunities, :repair_dollars_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :maintenance_opportunities, :maintenance_sold, :maintenance_dollars_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :specialty_opportunities, :specialty_sold, :specialty_dollars_sold, :repair_sold
    end
  end
end