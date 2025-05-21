class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
         
  # Required for Ransack/ActiveAdmin 3.x compatibility
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "current_sign_in_at", "current_sign_in_ip", "email", "id", "id_value", 
     "last_sign_in_at", "last_sign_in_ip", "remember_created_at", "reset_password_sent_at", 
     "sign_in_count", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
