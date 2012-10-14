class SessionsController < ApplicationController

  before_filter :check_authentication, :except => [:create, :new]
  def create
    begin
      session[:profile_id] = Profile.authenticate(params[:login], params[:password]).id
    rescue Exception => e
      redirect_to home_index_path, :notice => e.to_s
    return
    end

    if session[:intended_action] && session[:intended_controller]
      redirect_to :action => session[:intended_action], :controller => session[:intended_controller], :notice => "Welcome, You are now log in"
    else
      redirect_to home_index_path, :notice => "Welcome, You are now log in"
    end
  end

  def destroy
    session[:profile_id] = nil
    redirect_to home_index_path, :notice => "You are now unlogged"
  end
end
