module Refinery
  module Akouo
    class ProfitCenterNextYear < Refinery::Core::BaseModel
      self.table_name = 'pcny'

      attr_accessible(
        :pcnyrs, :pcnyrao, :pcnyrsa, :pcnyrr, :pcnyrra, :pcnycs, :pcnycao, :pcnycsa, :pcnycr, :pcnycra,
        :pcnym, :pcnyltl, :pcnyltc, :pcnylptf, :pcnylwci, :pcnyltb, :pcnysc, :pcnyp, :pcnyw, :pcnysct, :pcnyvf, :pcnyvmr, :pcnyt, :pcnyfsf, :pcnyfnad, :pcnypd
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
