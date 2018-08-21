CONFIG = YAML.load_file("#{::Rails.root}/config/secrets.yml")[::Rails.env]

Twilio.configure do |config|
  config.account_sid = CONFIG["twilio_account_sid"]
  config.auth_token = CONFIG["twilio_auth_token"]
end