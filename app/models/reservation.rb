class Reservation < ActiveRecord::Base

  validates_presence_of :name, length: 6..50, :message => 'verifica tu nombre'
  validates_presence_of :email, length: 6..50, :message => 'verifica el E-mail'
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  after_save :send_email

  private

  def send_email
    UserMailer.welcome_email(self).deliver
    UserMailer.new_registration_email(self).deliver
  end
  
end
