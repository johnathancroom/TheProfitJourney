module Refinery
  module Akouo
    class ProfitCenter < Refinery::Core::BaseModel

      self.table_name = 'pc'

      has_one :last_year, :class_name => 'Refinery::Akouo::LastYear'
      has_one :profit_center_last_year, :class_name => 'Refinery::Akouo::ProfitCenterLastYear'
      has_one :next_year, :class_name => 'Refinery::Akouo::NextYear'
      has_one :profit_center_next_year, :class_name => 'Refinery::Akouo::ProfitCenterNextYear'
      has_one :demand_trend, :class_name => 'Refinery::Akouo::DemandTrend'

      has_many :journeyboard_entries, :class_name => 'Refinery::Akouo::JourneyboardEntry'

      belongs_to :user, :class_name => 'Refinery::User'

      attr_accessible(
        :pcn,
        :last_year_attributes, :profit_center_last_year_attributes,
        :next_year_attributes, :profit_center_next_year_attributes
      )

      accepts_nested_attributes_for :last_year, :profit_center_last_year, :next_year, :profit_center_next_year

    end
  end
end
