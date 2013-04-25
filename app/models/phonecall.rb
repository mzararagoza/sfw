class Phonecall

  def send(to, message)
    twilio_client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    twilio_account = twilio_client.account
    twilio_account.calls.create(:url => ENV['TWILIO_API_URL'] + '/messages/'+ message.id.to_s + '.xml?api_key=' + ENV['TWILIO_API_KEY'] ,:to => '+1'+to, :from => ENV['TWILIO_FROM_PHONE'])
    #twilio_account.calls.create(:url => ENV['TWILIO_API_URL'] + '/messages/'+ Message.last.id.to_s + '.xml?api_key=' + ENV['TWILIO_API_KEY'] ,:to => '+1'+ '9545922500', :from => ENV['TWILIO_FROM_PHONE'])
  end
end
