class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #

  #default from: "ryan1@gmail.com"
  def signup_confirmation(contact)
  	@contact = contact
    mail to: @contact.email, subject: "yooooo"
  end
end
