class Reservation < ActiveRecord::Base

  validates_presence_of :name, length: 6..50, :message => 'verifica tu nombre'
  validates_presence_of :email, length: 6..50, :message => 'verifica el E-mail'
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  after_save :send_email

  # Required for Ransack/ActiveAdmin 3.x compatibility
  def self.ransackable_attributes(auth_object = nil)
    ["companion", "created_at", "email", "id", "id_value", "kids", "name", "phone", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  private

  def send_email
    UserMailer.welcome_email(self).deliver_now
    UserMailer.new_registration_email(self).deliver_now
  end
  
end
