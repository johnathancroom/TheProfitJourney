module Refinery
  module Akouo
    class SheetController < ::ApplicationController

      before_filter :find_customer
      before_filter :only => [:"start/show", :"start/edit"] { |c| c.find_page("/akouo/start") }
      before_filter :only => [:"vision/show", :"vision/edit"] { |c| c.find_page("/akouo/vision") }
      before_filter :only => [:"last_year/show", :"last_year/edit"] { |c| c.find_page("/akouo/last_year") }

      def start_update
        if @customer.update_attributes(params[:customer])
          redirect_to refinery.akouo_start_path, :notice => "Successfully saved!"
        else
          render :edit
        end
      end

      def last_year_update

      end

    protected

      def find_customer
        @customer = current_refinery_user.customer
      end

      def find_page(link_url)
        @page = ::Refinery::Page.where(:link_url => link_url).first
      end

    end
  end
end
