class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionHelper
    helper_method :current_user
    helper_method :logged_in?
    add_flash_types :info, :error, :success
    def current_user
       QlTv.find_by(sv_id: session[:sv_id])
    end
    def logged_in?
        !current_user.nil?
    end
end
