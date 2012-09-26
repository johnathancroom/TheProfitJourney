module Refinery
  module Akouo
    class AkouoController < ::ApplicationController
      before_filter :get_plans, :check_and_build_user_tables

    protected

      def get_plans
        @plans = [
          # Name, amount, frequency (by month)
          ["Bronze (Free)", 0, 0],
          ["", 0, 0],
          ["Silver ($39.99/month)", 39.99, 1],
          ["Silver ($450/year)", 450, 12],
          ["Gold ($149.99/month)", 149.99, 1],
          ["Gold ($1600/year)", 1600, 12],
          ["Platinum ($249.99/month)", 249.99, 1],
          ["Platinum ($2700/year)", 2700, 12]
        ]
      end

      def check_and_build_user_tables
        # This will be nice to have in the views anyway
        @user = current_refinery_user

        needed_tables = [
          "customer",
          "last_year",
          "profit_comparison_last_year"
        ]

        needed_tables.each do |table|
          # @user.customer.nil?
          if @user.send(table).nil?
            # @user.build_customer
            @user.send("build_#{table}")
          end
        end
      end

    end
  end
end