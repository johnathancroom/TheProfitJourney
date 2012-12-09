module Refinery
  module Akouo
    class SheetController < ::Refinery::Akouo::AkouoController

      SAVED_MESSAGE = 'Successfully saved!'

      before_filter { |controller| controller.redirect? :workshop }

      before_filter :check_and_build_user_tables, :find_models

      before_filter :only => [:start, :start_update] { |c| c.find_page('/akouo/start') }
      before_filter :only => [:vision, :vision_update] { |c| c.find_page('/akouo/vision') }
      before_filter :only => [:to_implement, :to_implement_update] { |c| c.find_page('/akouo/to_implement') }
      before_filter :only => [:organization_chart, :organization_chart_update] { |c| c.find_page('/akouo/organization_chart') }
      before_filter :only => [:last_year, :last_year_update] { |c| c.find_page('/akouo/last_year') }
      before_filter :only => [:demand_trend, :demand_trend_update] { |c| c.find_page('/akouo/demand_trend') }
      before_filter :only => [:demand_trend_chart] { |c| c.find_page('/akouo/demand_trend_chart') }
      before_filter :only => [:next_year, :next_year_update] { |c| c.find_page('/akouo/next_year') }
      before_filter :only => [:projection_chart] { |c| c.find_page('/akouo/projection_chart') }
      before_filter :only => [:advertising_plan, :advertising_plan_update] { |c| c.find_page('/akouo/advertising_plan') }
      before_filter :only => [:what_if_analysis, :what_if_analysis_update] { |c| c.find_page('/akouo/what_if_analysis') }
      before_filter :only => [:what_if_projection] { |c| c.find_page('/akouo/what_if_projection') }
      before_filter :only => [:call_requirements] { |c| c.find_page('/akouo/call_requirements') }
      before_filter :only => [:tech_requirements] { |c| c.find_page('/akouo/tech_requirements') }
      before_filter :only => [:profit_comparison] { |c| c.find_page('/akouo/profit_comparison') }
      before_filter :only => [:budget_snapshot] { |c| c.find_page('/akouo/budget_snapshot') }
      before_filter :only => [:month, :month_update] { |c| c.find_page('/akouo/month') }

      def start_update
        update(@customer, params[:customer], :start)
      end

      def last_year_update
        update(@user, params[:user], :last_year)
      end

      def next_year_update
        update(@user, params[:user], :next_year)
      end

      def demand_trend_update
        update(@user, params[:user], :demand_trend)
      end

    protected

      def find_models
        @user = current_refinery_user

        @profit_centers = @user.profit_centers

        @profit_center = @user.profit_centers.first

        @customer = @user.customer

        @pcly = @profit_center.profit_center_last_year
        @pcny = @profit_center.profit_center_next_year
      end

      def find_page(link_url)
        @page = ::Refinery::Page.where(:link_url => link_url).first
      end

      def update(model, attributes, path)
        if model.update_attributes(attributes)
          flash.now[:notice] = SAVED_MESSAGE
        end

        render path
      end

    end
  end
end
