module Refinery
  module Akouo
    module Admin
      class CustomersController < ::Refinery::AdminController
        crudify :'refinery/akouo/customer', :xhr_paging => true
      end
    end
  end
end
