#ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.mandrillapp.com',
  port: 587,
  domain: 'pet-a-porter.herokuapp.com',
  user_name: 'apalancat',
  password: 'vj8XFc38hEVoOEkJGTiWBg',
  authentication: 'plain',
  enable_starttls_auto: true
}
