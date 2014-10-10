module PetsHelper
  def show_me_the_image pet
    if pet.photo.present?
      image_tag(pet.photo)
    else
      "NO PHOTO"
    end
  end

  def buy_pet_link pet
    if pet.user.nil?
      link_to 'Buy', buy_pet_path(pet), method: :post, data: { confirm: 'Do you want to buy this?' }
    else
      "Not for sale, owned by #{pet.user.email}"
    end
  end

end
