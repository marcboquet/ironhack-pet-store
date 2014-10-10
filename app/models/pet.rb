class Pet < ActiveRecord::Base
  belongs_to :species
  belongs_to :user
  mount_uploader :photo, PetPhotoUploader

  validates_presence_of :name, :species

end
