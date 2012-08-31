module Refinery
  module Akouo
    class Akouo < Refinery::Core::BaseModel
      self.table_name = 'refinery_akouos'

      attr_accessible :id, :position
      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/akouo/app/models/refinery/akouo/akouo.rb"
      end
    end
  end
end
