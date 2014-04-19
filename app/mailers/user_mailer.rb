class UserMailer < ActionMailer::Base
  default from: "no-reply@sandraymario.com"
  
  def welcome_email(registration)
      @registration = registration
      mail(to: @registration.email, subject: 'Matri Sandra & Mario')
  end
  
  def new_registration_email(registration)
      @registration = registration
      mail(to: "sandrapachecoandrade@gmail.com", cc: "mariomtatis@gmail.com", subject: '#MatriSandrayMario registration')
  end
  
end
