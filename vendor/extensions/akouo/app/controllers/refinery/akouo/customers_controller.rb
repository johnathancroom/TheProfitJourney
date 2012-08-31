module Refinery
  module Akouo
    class CustomersController < ::ApplicationController

      before_filter :find_customer
      before_filter :find_page

      def show
        present(@page)
      end

      def edit
        present(@page)
      end

    protected

      def find_customer
        @customer = current_refinery_user.customer
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/akouo/customer").first
      end

    end
  end
end
