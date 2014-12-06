class SmsController < ApplicationController

  def send
    sms = TwilioSms.new(params)

    if sms.valid?
      sms.send
    else
      flash[:error] = "We could not send the sms"
      refirect_to root_path
    end
  end

end