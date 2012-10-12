class Education < ActiveRecord::Base

  attr_accessible :school, :website, :location, :start_date, :end_date, :description, :keywords, :picture_relations_attributes 
 
  has_many :picture_relations, :as => :parent, :dependent => :destroy
  has_many :pictures, :through => :picture_relations
  
  validates_presence_of :school
  
  accepts_nested_attributes_for :picture_relations, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
