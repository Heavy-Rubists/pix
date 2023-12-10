class ApplicationMailer < ActionMailer::Base
  default from: ENV["PIX_EMAIL"]
  layout "mailer"
end
