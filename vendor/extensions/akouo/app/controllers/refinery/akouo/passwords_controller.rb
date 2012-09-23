module Refinery
  module Akouo
    class PasswordsController < ::Refinery::PasswordsController

      layout "application"

      before_filter :find_page

      # Taken directly from https://github.com/refinery/refinerycms/blob/0c784518e79306513d634835ff568ef39eb0e1be/authentication/app/controllers/refinery/passwords_controller.rb#L32
      def create
        if params[:refinery_user].present? and (email = params[:refinery_user][:email]).present? and
           (user = User.where(:email => email).first).present?

          # Call devise reset function.
          user.send(:generate_reset_password_token!)
          UserMailer.reset_notification(user, request).deliver
          redirect_to refinery.akouo_login_path,
                      :notice => t('email_reset_sent', :scope => 'refinery.users.forgot')
        else
          flash.now[:error] = if (email = params[:refinery_user][:email]).blank?
            t('blank_email', :scope => 'refinery.users.forgot')
          else
            t('email_not_associated_with_account_html', :email => ERB::Util.html_escape(email), :scope => 'refinery.users.forgot').html_safe
          end
          render :new
        end
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/user/password/new").first
      end

    end
  end
end