class HomeController < ApplicationController
  before_action :home, only: [:show, :edit, :update, :destroy]
  
  def index
    @reservation = Reservation.new
  end
end
