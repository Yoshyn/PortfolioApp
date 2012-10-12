class ApplicationController < ActionController::Base
  protect_from_forgery

protected
  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      user = Profile.find_by_login(username).try(:authenticate, password)
      if user
        session[:login] = user.login
      end
      user
    end
  end
end
