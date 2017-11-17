# Use this hook to configure contact mailer.
ContactUs.setup do |config|

  # ==> Mailer Configuration

  # Configure the e-mail address which email notifications should be sent from.  If emails must be sent from a verified email address you may set it here.
  # Example:
  config.mailer_from = "ryanChangeThis@later.com"
  config.mailer_from = nil

  # Configure the e-mail address which should receive the contact form email notifications.
  config.mailer_to = "ryandowler999@hotmail.com"

  # ==> Form Configuration

  # Configure the form to ask for the users name.
  config.require_name = true

  # Configure the form to ask for a subject.
  config.require_subject = true


  config.form_gem = 'simple_form'
  config.form_gem = nil

  # Configure the redirect URL after a successful submission
  config.success_redirect = '/'



end