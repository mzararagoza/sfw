class Sms
  def send(to, msg)
    twilio_client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    twilio_account = twilio_client.account
    twilio_account.sms.messages.create(:from => ENV['TWILIO_FROM_PHONE'],:to => '+1'+to,:body => msg)
  end
end
