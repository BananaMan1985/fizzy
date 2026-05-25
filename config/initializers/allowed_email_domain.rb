Rails.application.configure do
  config.after_initialize do
    Identity.allowed_email_domain = ENV["ALLOWED_EMAIL_DOMAIN"].presence&.downcase
  end
end
