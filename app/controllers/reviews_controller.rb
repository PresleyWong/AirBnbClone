class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = current_user.reviews.new(review_params)

    if @review.save        
      flash[:notice] = "Review was successfully created."
      redirect_to place_path(@review.place)
    else
      flash[:alert] = "Oops something went wrong ..." 
    end

  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
      flash[:notice] = "Review was successfully updated."
      redirect_to place_path(@review.place)
    else
      flash[:alert] = "Oops something went wrong ..."
      render :edit 
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    flash[:notice] = "Review was successfully destroyed."
    redirect_to place_path(@review.place)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:star, :comment, :user_id, :place_id)
    end
end
