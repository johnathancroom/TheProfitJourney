module Refinery
  module Akouo
    class PaymentsController < ::ApplicationController

      before_filter :redirect?
      before_filter :page_specifics
      before_filter :expiry_select

      def create
        # Bronze was selected
        if params[:plan] == "0"
          # Remove user plan
          cancel_plan
        else
          # Setup transaction instance
          transaction = new_transaction

          # Cancel current plan if it exists
          cancel_plan

          credit_card = AuthorizeNet::CreditCard.new(params[:card_number], "#{params[:card_expiry_month]}#{params[:card_expiry_year]}")
          billing_address = AuthorizeNet::Address.new(
            :first_name => current_refinery_user.first_name,
            :last_name => current_refinery_user.last_name
          )
          subscription = AuthorizeNet::ARB::Subscription.new(
            :length => @plans[params[:plan].to_i][2], # from plan
            :unit => :month,
            :start_date => Date.today,
            :trial_occurrences => nil,
            :total_occurrences => 9999,
            :amount => @plans[params[:plan].to_i][1], # from plan
            :credit_card => credit_card,
            :billing_address => billing_address
          )
          response = transaction.create(subscription)

          if response.success?
            # Send reciept
            # Todo

            # Save user data
            current_refinery_user.plan_last_4 = params[:card_number][-4,4] if params[:card_selection] == "1" # Last 4 digits of credit card
            current_refinery_user.subscription_id = response.instance_variable_get(:@transaction).fields[:subscription_id] || response.subscription_id
            current_refinery_user.plan_id = params[:plan]
            current_refinery_user.save

            flash.now[:notice] = "Plan updated successfully."
          else
            @transaction_error = response.response_reason_text
          end
        end

        render :new
      end

    protected

      def page_specifics
        @page = ::Refinery::Page.where(:link_url => "/account/plans").first

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

      def expiry_select
        @months = []
        for x in 1..12 do
          @months.push([sprintf("%02d", x), sprintf("%02d", x)])
        end
        @years = []
        for x in 0..10 do
          @years.push([Time.now.year+x, Time.now.year+x])
        end
      end

      def new_transaction
        AuthorizeNet::ARB::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => :sandbox)
      end

      def cancel_plan
        cancel_transaction = new_transaction
        cancel_transaction.cancel(current_refinery_user.subscription_id)

        # Remove user plan
        current_refinery_user.subscription_id = nil
        current_refinery_user.plan_id = 0
        current_refinery_user.save
      end

    end
  end
end