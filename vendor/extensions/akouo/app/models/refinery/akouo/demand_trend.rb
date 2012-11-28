module Refinery
  module Akouo
    class DemandTrend < Refinery::Core::BaseModel
      self.table_name = 'pcdt'

      attr_accessible :month, :value

      belongs_to :profit_center, :class_name => 'Refinery::Akouo::ProfitCenter'
    end
  end
end