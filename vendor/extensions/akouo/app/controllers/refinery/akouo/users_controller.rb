module Refinery
  module Akouo
    class UsersController < ::ApplicationController

      before_filter :redirect?, :only => [:show]

      def new
        if refinery_user?
          # Redirect to account if already logged in
          redirect_to refinery.akouo_account_path
        else
          @page = ::Refinery::Page.where(:link_url => "/register").first
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

      def show
        @page = ::Refinery::Page.where(:link_url => "/account").first
      end

    end
  end
end