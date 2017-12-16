class ReservationsController < ApplicationController
  before_action :authenticate_user!, except: [:notify]

  def preload
    place = Place.find(params[:place_id])
    today = Date.today
    reservations = place.reservations.where("start_date >= ? OR end_date >= ?", today, today)
    render json: reservations
  end

  def preview
    start_date = Date.parse(params[:start_date])
    end_date = Date.parse(params[:end_date])

    output = {
      conflict: is_conflict(start_date, end_date)
    }

    render json: output
  end

  def show
    @reservation = Reservation.find(params[:id])

  end

  def create
    @reservation = current_user.reservations.create(reservation_params)

    if @reservation
      flash[:notice] = "Reservation successfully created"
      redirect_to place_reservation_path(params[:place_id], @reservation)
    else
      flash[:alert] = "Oops something went wrong ..."
      redirect_to @reservation.place
    end
  end

  protect_from_forgery except: [:notify]

  def notify
    params.permit!
    status = params[:payment_status]

    reservation = Reservation.find(params[:item_number])

    if status = "Completed"
      reservation.update_attributes status: true
    else
      reservation.destroy
    end

    render nothing: true
  end

  protect_from_forgery except: [:your_trips]

  def your_trips
    @trips = current_user.reservations.where("status = ?", true)
  end

  def your_reservations
    @places = current_user.places
    @reservations = current_user.reservations
  end

  private

    def is_conflict(start_date, end_date)
      place = Place.find(params[:place_id])

      check = place.reservations.where("? < start_date AND end_date < ?", start_date, end_date)
      check.size > 0? true : false
    end

    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :price, :total, :place_id, :num_guest)
    end
end