module PetsHelper
  def show_me_the_image pet
    if pet.photo.present?
      image_tag(pet.photo)
    else
      "NO PHOTO"
    end
  end
end
