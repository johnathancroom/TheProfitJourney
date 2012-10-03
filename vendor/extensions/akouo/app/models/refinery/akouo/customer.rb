module Refinery
  module Akouo
    class Customer < Refinery::Core::BaseModel
      self.table_name = 'cust'

      attr_accessible(
        :id,
        :cdba, :cfn, :cln, :cidate, :ccsd, :cced, :ccpd, :cah,
        :profit_center_name_1, :profit_center_name_2, :profit_center_name_3, :profit_center_name_4
      )

      belongs_to :user, :class_name => "Refinery::User"

      def profit_center_name_1
        find_profit_center(0).pcn
      end

      def profit_center_name_1=(name)
        find_profit_center_and_save(0, name)
      end

      def profit_center_name_2
        find_profit_center(1).pcn
      end

      def profit_center_name_2=(name)
        find_profit_center_and_save(1, name)
      end

      def profit_center_name_3
        find_profit_center(2).pcn
      end

      def profit_center_name_3=(name)
        find_profit_center_and_save(2, name)
      end

      def profit_center_name_4
        find_profit_center(3).pcn
      end

      def profit_center_name_4=(name)
        find_profit_center_and_save(3, name)
      end

    protected

      def find_profit_center(offset)
        @profit_center = Refinery::Akouo::ProfitCenter.where(:user_id => self.user_id).limit(1).offset(offset).first
      end

      def find_profit_center_and_save(offset, name)
        @profit_center = find_profit_center(offset)
        @profit_center.update_attributes({ :pcn => name })
      end
    end
  end
end
