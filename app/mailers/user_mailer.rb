class UserMailer < ActionMailer::Base
  default from: "no-reply@sandraymario.com"
  
  def welcome_email(registration)
      @registration = registration
      mail(to: @registration.email, subject: 'Matri Sandra & Mario')
    end
  
end
