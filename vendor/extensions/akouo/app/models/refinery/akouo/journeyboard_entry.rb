module Refinery
  module Akouo
    class JourneyboardEntry < Refinery::Core::BaseModel
      self.table_name = "refinery_journeyboard_entries"

      belongs_to :profit_center, :class_name => "Refinery::Akouo::ProfitCenter"
      belongs_to :technician, :class_name => "Refinery::Akouo::JourneyboardTechnician"

      attr_accessible(
        :profit_center_id, :technician_id, :date,
        :commission, :todays_pay, :revenue, :parts, :add_on, :leads, :opportunities, :tickets, :hours, :fuel_cost
      )

      validates_presence_of :profit_center_id, :technician_id, :date, :commission, :todays_pay, :revenue, :parts, :add_on, :leads, :opportunities, :tickets, :hours, :fuel_cost
    end
  end
end