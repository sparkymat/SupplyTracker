Twilio.configure do |config|
  config.account_sid = Settings.twilio_account_sid
  config.auth_token = Settings.twilio_auth_token
end
