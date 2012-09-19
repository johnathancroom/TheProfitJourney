module Refinery
  module Akouo
    class StartController < ::ApplicationController

      before_filter :find_customer
      before_filter :find_page

      def show
        present(@page)
      end

      def edit
        present(@page)
      end

      def update
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

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/akouo/start").first
      end

    end
  end
end
