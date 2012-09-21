module Refinery
  module Akouo
    class ProfitComparisonLastYear < Refinery::Core::BaseModel
      self.table_name = 'pcly'

      attr_accessible(
        :pclyrs, :pclyrao, :pclyrsa, :pclyrr, :pclyrra,
        :pclycs, :pclycao, :pclycsa, :pclycr, :pclycra
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
