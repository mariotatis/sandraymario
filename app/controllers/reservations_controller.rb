class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        mail(:from => "no-reply@sandraymario.com", 
                :to => "mario@koombea.com", 
                :subject => "Test email").deliver!
                
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.js   { render :action => "success"}
      else
        format.html { redirect_to root_path }
        format.js   { render :action => "failure"}
      end
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:name, :email, :companion, :phone, :kids)
  end
end
