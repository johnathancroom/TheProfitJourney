module Refinery
  module Akouo
    class AkouoController < ::ApplicationController

      before_filter :get_plans

    protected

      def check_and_build_user_tables
        needed_tables = [
          'last_year',
          'profit_center_last_year',
          'next_year',
          'profit_center_next_year',
          'demand_trend'
        ]

        profit_center_default_names = [
          'Replacement',
          'Repair',
          'Maintenance',
          'Specialty'
        ]

        # Create four profit centers
        for x in @user.profit_centers.count..3
          @user.profit_centers.create(:pcn => profit_center_default_names[x-1])
        end

        # Reset Profit Center Names
        for x in 0..3
          profit_center = @user.profit_centers[x]
          profit_center.pcn = profit_center_default_names[x]
          profit_center.save
        end

        # Create customer
        if @user.customer.nil?
          @user.build_customer
        end

        # Create profit center dependencies
        @user.profit_centers.each do |profit_center|
          needed_tables.each do |table|
            # profit_center.last_year.nil?
            if profit_center.send(table).nil?
              # profit_center.build_last_year
              profit_center.send("build_#{table}")
            end
          end
        end
      end

      def new_transaction
        AuthorizeNet::ARB::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => ((ENV['ANET_SANDBOX'].nil?) ? :production : :sandbox))
      end

      def cancel_plan
        cancel_transaction = new_transaction
        cancel_transaction.cancel(@user.subscription_id)

        # Remove user plan
        @user.subscription_id = nil
        @user.plan_id = 0
        @user.save
      end

      def get_plans
        if !@user.nil?
          @plans = @user.plans
        end
      end

    end
  end
end