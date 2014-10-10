class Pet < ActiveRecord::Base
  belongs_to :species
  mount_uploader :photo, PetPhotoUploader
  
  validates_presence_of :name, :species
end
