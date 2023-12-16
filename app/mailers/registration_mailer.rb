class RegistrationMailer < ApplicationMailer

    def registration_confirmation(user)
        @user = user
        mail(to: user.email, subject: "Confirm you account")
    end
end
