module Refinery
  module Akouo
    class SheetController < ::ApplicationController

      SAVED_MESSAGE = "Successfully saved!"

      before_filter :find_models
      before_filter :only => [:"start/show", :"start/edit"] { |c| c.find_page("/akouo/start") }
      before_filter :only => [:"vision/show", :"vision/edit"] { |c| c.find_page("/akouo/vision") }
      before_filter :only => [:"last_year/show", :"last_year/edit"] { |c| c.find_page("/akouo/last_year") }

      def start_update
        if @customer.update_attributes(params[:customer])
          redirect_to refinery.akouo_start_path, :notice => SAVED_MESSAGE
        else
          render :"start/edit"
        end
      end

      def last_year_update
        if @last_year.update_attributes(params[:customer])
          redirect_to refinery.akouo_last_year_path, :notice => SAVED_MESSAGE
        else
          render :"last_year/edit"
        end
      end

    protected

      def find_models
        @customer = current_refinery_user.customer
        @last_year = current_refinery_user.last_year
      end

      def find_page(link_url)
        @page = ::Refinery::Page.where(:link_url => link_url).first
      end

    end
  end
end
