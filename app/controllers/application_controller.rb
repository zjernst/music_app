class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  helper_method :login!

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !current_user.nil?
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def login!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
  end
end
