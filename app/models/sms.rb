class Sms
  def send(to, msg)
    #@account_sid = ENV['TWILIO_ACCOUNT_SID']
    @account_sid = 'ACef7bf339e3c2280b8b9ca0e4fb5daffc'
    @auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    @account = @client.account
    @message = @account.sms.messages.create({:from => '+19546213334', :to => '1'+to, :body => msg})
  end
end
