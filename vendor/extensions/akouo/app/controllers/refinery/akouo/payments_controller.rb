module Refinery
  module Akouo
    class PaymentsController < ::Refinery::Akouo::AkouoController

      before_filter :redirect?
      before_filter :get_page
      before_filter :expiry_select

      def create
        # Bronze was selected
        if params[:plan] == "0"
          # Remove user plan
          cancel_plan

          redirect_to refinery.akouo_account_path, :notice => "Plan updated successfully."
        else
          # Setup transaction instance
          transaction = new_transaction

          # Cancel current plan if it exists
          cancel_plan

          credit_card = AuthorizeNet::CreditCard.new(params[:card_number], "#{params[:card_expiry_month]}#{params[:card_expiry_year]}", :card_code => params[:cvv])
          billing_address = AuthorizeNet::Address.new(
            :first_name => params[:first_name],
            :last_name => params[:last_name],
            :street_address => params[:address],
            :city => params[:city],
            :state => params[:state],
            :zip => params[:zip_code]
          )
          subscription = AuthorizeNet::ARB::Subscription.new(
            :name => @plans[params[:plan_id].to_i][0],
            :length => @plans[params[:plan_id].to_i][2], # from plan
            :unit => :month,
            :start_date => Date.today,
            :trial_occurrences => nil,
            :total_occurrences => 9999,
            :amount => @plans[params[:plan_id].to_i][1], # from plan
            :credit_card => credit_card,
            :billing_address => billing_address
          )
          response = transaction.create(subscription)

          if response.success?
            # Send reciept
            # Todo

            # Save user data
            @user.subscription_id = response.instance_variable_get(:@transaction).fields[:subscription_id] || response.subscription_id
            @user.plan_id = params[:plan_id]
            @user.save

            redirect_to refinery.akouo_account_path, :notice => 'Payment successful!'
          else
            flash.now[:error] = response.response_reason_text
            render :new
          end
        end
      end

    protected

      def get_page
        @page = ::Refinery::Page.where(:link_url => "/account").first
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