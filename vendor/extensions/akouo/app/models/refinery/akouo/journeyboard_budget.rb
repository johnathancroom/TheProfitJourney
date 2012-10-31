module Refinery
  module Akouo
    class JourneyboardBudget < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_budgets'

      belongs_to :user, :class_name => 'Refinery::User'

      attr_accessible :replacement_calls_sold, :replacement_cogs, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :budget_days, :total_expenses, :total_operating_profit, :ytd_gross_margin, :replacement_warranty_calls, :maintenance_warranty_calls, :specialty_warranty_calls, :replacement_membership_opportunities, :replacement_memberships_sold, :replacement_revenue, :replacement_calls, :repair_calls_sold, :maintenance_calls_sold, :specialty_calls_sold, :replacement_accessories, :repair_accessories, :maintenance_accessories, :specialty_accessories

      validates_presence_of :replacement_calls_sold, :replacement_cogs, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :budget_days, :total_expenses, :total_operating_profit, :ytd_gross_margin, :replacement_warranty_calls, :maintenance_warranty_calls, :specialty_warranty_calls, :replacement_membership_opportunities, :replacement_memberships_sold, :replacement_revenue, :replacement_calls, :repair_calls_sold, :maintenance_calls_sold, :specialty_calls_sold, :replacement_accessories, :repair_accessories, :maintenance_accessories, :specialty_accessories
    end
  end
end