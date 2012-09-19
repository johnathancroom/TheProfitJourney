module Refinery
  module Akouo
    class Customer < Refinery::Core::BaseModel
      self.table_name = 'cust'

      attr_accessible :id, :cdba, :cfn, :cln, :cidate, :ccsd, :cced, :ccpd, :cah

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
