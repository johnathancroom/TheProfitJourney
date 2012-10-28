module Refinery
  module Akouo
    class UsersController < ::Refinery::Akouo::AkouoController

      before_filter :redirect?, :only => [:show, :update]
      before_filter :account_page_specifics, :only => [:show, :update]

      before_filter :register_page, :only => [:new, :create]

      def new
        if refinery_user?
          # Redirect to account if already logged in
          redirect_to refinery.akouo_account_path
        else
          @user = ::Refinery::User.new
        end
      end

      def create
        # Create new user
        @user = ::Refinery::User.new(params[:user])
        @user.add_role(:refinery) # Add refinery role to user

        if @user.save
          sign_in(@user)

          # Redirect to account
          redirect_to refinery.akouo_account_path, :notice => "You've been successfully logged in."
        else
          render :new
        end
      end

      def update
        # Ignore blank password
        if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
          params[:user].except!(:password, :password_confirmation)
        end

        if params[:user][:plan_id].to_i != @user.get_plan
          cancel_plan
          changed_plan = true
        end

        if @user.update_attributes(params[:user])
          if changed_plan
            redirect_to refinery.akouo_account_payments_path, :notice => 'Please fill out your payment information to finish registering for a new plan.'
          else
            flash.now[:notice] = 'Account has been saved.'
            render :show
          end
        else
          render :show
        end
      end

    protected

      def account_page_specifics
        @user = current_refinery_user
        @page = ::Refinery::Page.where(:link_url => "/account").first
        @workshops = ::Refinery::Workshops::Workshop.current
      end

      def register_page
        @page = ::Refinery::Page.where(:link_url => "/register").first
      end

    end
  end
end