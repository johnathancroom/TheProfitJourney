module Refinery
  module Akouo
    class AkouoController < ::ApplicationController
      before_filter :get_plans, :get_user

    protected

      def get_user
        @user = current_refinery_user
      end

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
        needed_tables = [
          "customer",
          "last_year",
          "profit_center_last_year",
          "next_year",
          "profit_center_next_year"
        ]

        # Create first profit center
        if current_refinery_user.profit_centers.empty?
          profit_center = current_refinery_user.profit_centers.create(:pcn => "Profit Center")
        end

        # Create profit center dependencies
        current_refinery_user.profit_centers.each do |profit_center|
          needed_tables.each do |table|
            # profit_center.customer.nil?
            if profit_center.send(table).nil?
              # profit_center.build_customer
              profit_center.send("build_#{table}")
            end
          end
        end
      end

    end
  end
end