module Refinery
  module Akouo
    class ProfitCenterLastYear < Refinery::Core::BaseModel
      self.table_name = 'pcly'

      attr_accessible(
        :pclyrs, :pclyrao, :pclyrsa, :pclyrr, :pclyrra, :pclycs, :pclycao, :pclycsa, :pclycr, :pclycra,
        :pclym, :pclyltl, :pclyltc, :pclylptf, :pclylwci, :pclyltb, :pclysc, :pclyp, :pclyw, :pclysct, :pclyvf, :pclyvmr, :pclyt, :pclyfsf, :pclyfnad, :pclypd
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
