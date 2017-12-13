class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  def index
    @places = current_user.places
  end

  def show
    @photos = @place.images

    @booked = Reservation.where("place_id = ? AND user_id = ?", @place.id, current_user.id).present? if current_user
    @reviews = @place.reviews
    @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
  end

  def new
    @place = current_user.places.build
  end

  def create
    @place = current_user.places.build(place_params)

    if @place.save
      redirect_to edit_place_path(@place), notice: "Saved..."
    else
      render :new
    end
  end

  def edit
    if current_user.id == @place.user.id
      @photos = @place.images
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @place.update(place_params)
      if params[:images]
        params[:images].each do |image|
          @place.images.create(image: image)
        end
      end

      redirect_to edit_place_path(@place), notice: "Updated..."
    else
      render :edit
    end
  end

  private

    def set_place
      @place = Place.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:home_type, :place_type, :accommodate, :bed_room, :bath_room, :listing_name, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :active, {images: []}, :remove_images)
    end
end
