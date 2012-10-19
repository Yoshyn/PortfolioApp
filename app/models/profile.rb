class Profile < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :name, :firstname, :login, :email, :location, :password, :title, :description, :hobby, :workInformations, :git_link, :fb_link,  :twitter_link, :lkdIn_link, :picture_relation_attributes 
  
  has_one :picture_relation, :as => :parent, :dependent => :destroy
  has_one :picture, :through => :picture_relation
  
  validates_presence_of :login, :email, :title, :description
  validates_presence_of :login, :password, :on => :create
  validates_uniqueness_of :login
  
  accepts_nested_attributes_for :picture_relation, :allow_destroy => :true,
  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  def self.authenticate(login,password)
    user = Profile.find_by_login(login)
    unless user && user.authenticate(password)
      raise "Bad login or password"
    end
    user
  end
  
end
