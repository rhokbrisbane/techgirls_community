class TwilioSms
  include ActiveModel::Model
  attr_reader :to, :from, :client
  validate setup_twilio_client
  validates_presence_of :to, :from

  def initialize(args)
    @to             = args[:to]
    @from           = args[:from]
    @superhero_name = args[:superhero_name]
  end

  def send
    client.account.messages.create(to, from, body)
  end

  private

  def setup_twilio_client
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token  = Rails.application.secrets.twilio_auth_token
    @client     = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def body
    "You are a girl! YAYAYA"
  end

end