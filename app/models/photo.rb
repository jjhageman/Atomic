class Photo < ActiveRecord::Base
  belongs_to :profile
  mount_uploader :image, ImageUploader
  validates :image, :presence => true
end
