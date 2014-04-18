class Reservation < ActiveRecord::Base

  validates_presence_of :name, length: 6..50, :message => 'verifica tu nombre'
  validates_presence_of :email, length: 6..50, :message => 'verifica el E-mail'
  validates_presence_of :kids, numericality: true, :message => 'el número de niños no parece correcto'
  validates_presence_of :companion, length: 6..50, :message => 'verifica el nombre de tu acompañante'
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
