module Refinery
  module Akouo
    class JourneyboardDmrEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_dmr_entries'

      belongs_to :user, :class_name => 'Refinery::User'
      has_many :comfort_advisor_entries, :class_name => 'Refinery::Akouo::JourneyboardDmrComfortAdvisorEntry'

      attr_accessible(
        :replacement_replaced, :replacement_installed, :replacement_cogs, :replacement_backlog, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :repair_opportunities, :repair_sold, :repair_dollars_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :maintenance_opportunities, :maintenance_sold, :maintenance_dollars_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :specialty_opportunities, :specialty_sold, :specialty_dollars_sold, :memberships_sold_by_csr, :memberships_sold_new_systems, :memberships_lost, :date, :comfort_advisor_entries_attributes
      )

      validates_presence_of :replacement_replaced, :replacement_installed, :replacement_cogs, :replacement_backlog, :repair_calls, :repair_warranty_calls, :repair_revenue, :repair_cogs, :repair_membership_opportunities, :repair_memberships_sold, :repair_opportunities, :repair_sold, :repair_dollars_sold, :maintenance_calls, :maintenance_revenue, :maintenance_cogs, :maintenance_membership_opportunities, :maintenance_memberships_sold, :maintenance_opportunities, :maintenance_sold, :maintenance_dollars_sold, :specialty_calls, :specialty_revenue, :specialty_cogs, :specialty_membership_opportunities, :specialty_memberships_sold, :specialty_opportunities, :specialty_sold, :specialty_dollars_sold, :memberships_sold_by_csr, :memberships_sold_new_systems, :memberships_lost, :date

      accepts_nested_attributes_for :comfort_advisor_entries
    end
  end
end