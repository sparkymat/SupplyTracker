class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call(to)
    client = Twilio::REST::Client.new Settings.twilio_account_sid, Settings.twilio_auth_token
    client.messages.create({
         from: Settings.twilio_phone_number,
         to: to,
         body: message
     })
  end
end
