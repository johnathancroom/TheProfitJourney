module Refinery
  module Akouo
    class PaymentsController < ::ApplicationController

      before_filter :redirect?
      before_filter :page_specifics
      before_filter :expiry_select

      def create
        # Setup recurring payments
        credit_card = AuthorizeNet::CreditCard.new(params[:card_number], "#{params[:card_expiry_month]}#{params[:card_expiry_year]}")
        billing_address = AuthorizeNet::Address.new(
          :first_name => current_refinery_user.first_name,
          :last_name => current_refinery_user.last_name
        )
        subscription = AuthorizeNet::ARB::Subscription.new(
          :length => 1, # from plan
          :unit => :month, # from plan
          :start_date => Date.today,
          :trial_occurrences => nil,
          :total_occurrences => 9999,
          :amount => 25.00, # from plan
          :credit_card => credit_card,
          :billing_address => billing_address
        )
        response = transaction.create(subscription)

        if response.success?
          # Send reciept
          # Todo

          # Save user's subscription_id
          current_refinery_user.subscription_id = response.subscription_id
          current_refinery_user.save

          flash.now[:notice] = "Plan updated successfully."
        else
          @transaction_error = response.response_reason_text
        end

        render :new
      end

    protected

      def page_specifics
        @page = ::Refinery::Page.where(:link_url => "/account/plans").first

        transaction = AuthorizeNet::ARB::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => :sandbox)

        if current_refinery_user.subscription_id.nil?
          @subscription_status = -1
        else
          response = transaction.get_status(current_refinery_user.subscription_id)
          @subscription_status = response.subscription_status
        end
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

    end
  end
end