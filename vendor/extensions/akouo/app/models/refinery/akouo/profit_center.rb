module Refinery
  module Akouo
    class ProfitCenter < Refinery::Core::BaseModel

      self.table_name = 'pc'

      has_one :profit_center_last_year, :class_name => 'Refinery::Akouo::ProfitCenterLastYear'
      has_one :profit_center_next_year, :class_name => 'Refinery::Akouo::ProfitCenterNextYear'

      has_many :demand_trends, :class_name => 'Refinery::Akouo::DemandTrend'

      has_many :journeyboard_entries, :class_name => 'Refinery::Akouo::JourneyboardEntry'

      belongs_to :user, :class_name => 'Refinery::User'

      attr_accessible(
        :pcn,
        :profit_center_last_year_attributes,
        :profit_center_next_year_attributes,
        :demand_trends_attributes
      )

      accepts_nested_attributes_for :profit_center_last_year, :profit_center_next_year, :demand_trends

    end
  end
end
