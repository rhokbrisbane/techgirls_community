class TwilioSms
  include ActiveModel::Model
  attr_reader :to, :from, :client, :superhero_name
  validates_presence_of :to, :from

  def initialize(args)
    @to             = args[:to]
    @from           = args[:from]
    @superhero_name = args[:superhero_name]
  end

  def send
    setup_twilio_client
    client.account.messages.create(to, from, body)
  end

  private

  def setup_twilio_client
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token  = Rails.application.secrets.twilio_auth_token
    @client     = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def body
    "Welcome #{superhero_name} to the #techgirls sisterhood!
    Thank you for sharing your story. It has been posted to http://bit.ly/1vZr3wd"
  end

end