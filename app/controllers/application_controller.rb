class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def check_authentication
    unless session[:profile_id]
      session[:intended_action] = action_name
      session[:intended_controller] = controller_name
      redirect_to new_session_url
    end
    
  end
end
