module UsersHelper
  def list_of_pets u
    pets_html = "<br/>"
    u.pets.each do |pet|
      pets_html += "#{pet.name} <br/>"
    end
    ## Call html_safe so it doesn't escape the
    ## html tags
    pets_html.html_safe
  end
end
