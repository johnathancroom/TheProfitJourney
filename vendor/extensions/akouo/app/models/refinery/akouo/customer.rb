module Refinery
  module Akouo
    class Customer < Refinery::Core::BaseModel
      self.table_name = 'cust'

      attr_accessible :id

      belongs_to :user, :class_name => 'Refinery::User' 

      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/akouo/app/models/refinery/akouo/akouo.rb"
      end
    end
  end
end
