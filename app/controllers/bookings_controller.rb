class BookingsController < ApplicationController
  


  def create
    @booking = Booking.new(permitted_params)
    @booking.user = User.first
    if @booking.save
      redirect_to edit_booking_path(@booking)
    else 
      
      redirect_to referrals_path
      flash[:alert] = @booking.errors.to_a.join(', ')
    end
  end

  def index
    @bookings = Booking.all.order(created_at: :desc)
  end
  
  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(permitted_params)
      redirect_to bookings_path
    end
  end

  def permitted_params
    params.require(:booking).permit(
      :begins_at,
      :ends_at,
      :address,
      :zip,
      :city,
      :adress_directions,
      :price,
      :contact_name,
      patient_ids: [],
      :patients_attributes => [
        :id,
        :zip,
        :name,
        :address,
        :city
      ]
    )
  end
end