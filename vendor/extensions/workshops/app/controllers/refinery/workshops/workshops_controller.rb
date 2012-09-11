module Refinery
  module Workshops
    class WorkshopsController < ::ApplicationController

      before_filter :find_all_workshops
      before_filter :find_workshop, :only => [:show, :signup_new, :signup_create]
      before_filter :find_page
      before_filter :expiry_select, :only => [:signup_new, :signup_create]

      def index
      end

      def show
      end

      def signup_new
        @user = ::Refinery::User.new
      end

      def signup_create
        # Create new user
        @user = ::Refinery::User.new(params[:user])
        @user.add_role(:refinery) # Add refinery role to user

        if @user.save
          # Authorize transaction
          auth_transaction = create_transaction
          auth_transaction.set_fields({
              :email => params[:user][:email]
            })
          credit_card = AuthorizeNet::CreditCard.new(params[:card_number], "#{params[:card_expiry_month]}#{params[:card_expiry_year]}")
          auth_response = auth_transaction.authorize(@workshop.price, credit_card)

          if auth_response.success?
            # Capture transaction
            capture_transaction = create_transaction
            capture_response = capture_transaction.prior_auth_capture(auth_response.transaction_id)

            render :text => "Success!"
          else
            # Destroy created user
            @user.destroy

            @transaction_error = auth_response.response_reason_text

            render :signup_new
          end
        else
          render :signup_new
        end
      end

    protected

      def find_all_workshops
        @workshops = Workshop.where("date > ?", Time.now.beginning_of_day).order('date ASC')
      end

      def find_workshop
        @workshop = Workshop.find(params[:id])
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/workshops/calendar").first
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

      def create_transaction
        AuthorizeNet::AIM::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => :sandbox)
      end

    end
  end
end
