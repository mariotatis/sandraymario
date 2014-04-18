class UserMailer < ActionMailer::Base
  default from: "no-reply@sandraymario.com"
  
  def welcome_email(registration)
      @registration = registration
      mail(to: @registration.email, subject: 'Welcome to My Awesome Site')
    end
  
end
