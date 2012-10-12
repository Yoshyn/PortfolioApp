class Picture < ActiveRecord::Base
  
  mount_uploader :url, PictureUploader
  
  has_many :picture_relations, :dependent => :destroy
  has_many :projects, :through => :picture_relations, :source => :parent, :source_type => 'Project'
  
  validates_presence_of :url
  
end
