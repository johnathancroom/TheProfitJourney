module Refinery
  module Akouo
    class ProfitCenter < Refinery::Core::BaseModel
      self.table_name = 'pc'

      has_one :customer, :class_name => "Refinery::Akouo::Customer"
      has_one :last_year, :class_name => "Refinery::Akouo::LastYear"
      has_one :profit_center_last_year, :class_name => "Refinery::Akouo::ProfitCenterLastYear"
      has_one :next_year, :class_name => "Refinery::Akouo::NextYear"
      has_one :profit_center_next_year, :class_name => "Refinery::Akouo::ProfitCenterNextYear"

      belongs_to :user, :class_name => "Refinery::User"

      attr_accessible(
        :pcn,
        :customer_attributes,
        :last_year_attributes, :profit_center_last_year_attributes,
        :next_year_attributes, :profit_center_next_year_attributes
      )

      accepts_nested_attributes_for :customer, :last_year, :profit_center_last_year, :next_year, :profit_center_next_year
    end
  end
end
