module Refinery
  module Akouo
    module Admin
      class AkouosController < ::Refinery::AdminController

        crudify :'refinery/akouo/akouo', :xhr_paging => true

      end
    end
  end
end
