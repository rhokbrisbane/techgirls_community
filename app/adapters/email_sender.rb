require 'mandrill'

class EmailSender
  def self.send_email(from_name:, from_email:, to_name:, to_email:, subject:, html:)
    message = {
      from_name:  from_name,
      from_email: from_email,
      to:         [{ name: to_name, email: to_email }],
      subject:    subject,
      html:       html
    }

    sender.messages.send(message)
  end

  private

  def self.sender
    ::Mandrill::API.new(Rails.application.secrets.mandrill_key)
  end
end
