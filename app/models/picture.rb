class Picture < ActiveRecord::Base
  
  mount_uploader :url, PictureUploader
  
  has_many :picture_relations, :dependent => :destroy
  has_many :projects, :through => :picture_relations, :source => :parent, :source_type => 'Project'
  
  validates_presence_of :url
  
  scope :in_relation_with, lambda {|obj| where("id not in (select picture_id from picture_relations pr where parent_id = #{obj.id} AND parent_type = '#{obj.class.to_s}')")}
  
end
