module Refinery
  module Akouo
    class SheetController < ::ApplicationController

      before_filter :find_customer
      before_filter :find_page_start, :only => [:"start/show", :"start/edit"]
      before_filter :find_page_vision, :only => [:"vision/show", :"vision/edit"]

      def start_update
        if @customer.update_attributes(params[:customer])
          redirect_to refinery.akouo_start_path, :notice => "Successfully saved!"
        else
          render :edit
        end
      end

    protected

      def find_customer
        @customer = current_refinery_user.customer
      end

      def find_page_start
        @page = ::Refinery::Page.where(:link_url => "/akouo/start").first
      end
      def find_page_vision
        @page = ::Refinery::Page.where(:link_url => "/akouo/vision").first
      end

    end
  end
end
