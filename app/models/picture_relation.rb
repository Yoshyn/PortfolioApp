class PictureRelation < ActiveRecord::Base
  belongs_to :picture
  belongs_to :parent, :polymorphic => true
end
