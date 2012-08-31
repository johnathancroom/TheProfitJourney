module Refinery
  module Akouo
    class AkouosController < ::ApplicationController

      before_filter :find_all_akouos
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @akouo in the line below:
        present(@page)
      end

      def show
        @akouo = Akouo.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @akouo in the line below:
        present(@page)
      end

    protected

      def find_all_akouos
        @akouos = Akouo.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/akouos").first
      end

    end
  end
end
