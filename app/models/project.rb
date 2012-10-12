class Project < ActiveRecord::Base
  
  attr_accessible :title, :status, :website, :technologies, :description, :picture_relations_attributes 
 
  
  has_many :picture_relations, :as => :parent, :dependent => :destroy
  has_many :pictures, :through => :picture_relations
  
  validates_presence_of :title, :length => { :minimum => 3 }
  
  accepts_nested_attributes_for :picture_relations, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
