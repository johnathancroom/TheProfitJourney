module Refinery
  module Akouo
    class UsersController < ::ApplicationController

      before_filter :find_page

      def new
        # Redirect to account page if already logged in

        @user = ::Refinery::User.new
      end

      def create
        # Create new user
        @user = ::Refinery::User.new(params[:user])
        @user.add_role(:refinery) # Add refinery role to user

        if @user.save
          # Redirect to login
          redirect_to refinery.akouo_register_path, :notice => "You've been signed up."
        else
          render :new
        end
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/register").first
      end

    end
  end
end