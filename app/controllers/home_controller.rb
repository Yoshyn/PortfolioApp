class HomeController < ApplicationController

  before_filter :check_authentication, :except => [:index]
  def index
    @profile = Profile.find(:first)
    if @profile.nil?
      @profile = Profile.new(:login => "Anon", :email => "anon@anon.anon", :password => "anon", :title => "Hi. I'm Anon, Welcome on my portfolio", :description => "My personal Description")
    @profile.save
    end
    @projects = Project.all.first(3)
  end
end
