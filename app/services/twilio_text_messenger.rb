class TwilioTextMessenger
  CONFIG = YAML.load_file("#{::Rails.root}/config/secrets.yml")[::Rails.env]

  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call(to)
    client = Twilio::REST::Client.new CONFIG["twilio_account_sid"], CONFIG["twilio_auth_token"]
    client.messages.create({
         from: CONFIG["twilio_phone_number"],
         to: to,
         body: message
     })
  end
end