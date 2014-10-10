class Notifications < ActionMailer::Base
  default from: "no-reply@pet-a-porter.dev"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.signup.subject
  #
  def signup
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.bought_pet.subject
  #
  def bought_pet email
    @greeting = "Hi"

    mail to: email
  end
end
