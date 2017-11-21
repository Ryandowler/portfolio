class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #

  default to: "ryandowler999@hotmail.com"
  def signup_confirmation(contact)
  	@contact = contact
    mail to: "ryandowler999@hotmail.com", subject: "Portfolio - Inquiry"
  end
end
