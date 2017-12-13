class PagesController < ApplicationController

  def home
  	@places = Place.limit(6)
  end

  def search
  	if params[:search].present? && params[:search].strip != ""
  		session[:loc_search] = params[:search]
  	end

	  arrResult = Array.new

	  if session[:loc_search] && session[:loc_search] != ""
	  	@places_address = Place.where(active: true).near(session[:loc_search], 5, order: 'distance')
	  else
	  	@places_address = Place.where(active: true).all
	  end

	  @search = @places_address.ransack(params[:q])
	  @places = @search.result

	  @arrplaces = @places.to_a

	  if (params[:start_date] && params[:end_date] && !params[:start_date].empty? && !params[:end_date].empty?)

	  	start_date = Date.parse(params[:start_date])
	  	end_date = Date.parse(params[:end_date])

	  	@places.each do |place|
	  		not_available = Place.reservations.where(
	  			"(? <= start_date AND start_date <= ?)
						OR (? <= end_date AND end_date <= ?)
						OR (start_date < ? AND ? < end_date)",
						start_date, end_date,
						start_date, end_date,
						start_date, end_date).limit(1)

	  		if not_available.length > 0
	  			@arrplaces.delete(Place)
	  		end
	  	end
		end
	end
end
