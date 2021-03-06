class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def new
  	gon.client_token = generate_client_token
  	@reservation = Reservation.find(params[:id])  
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: params[:total],
              payment_method_nonce: 'fake-valid-nonce')
    if @result.success?

      r = Reservation.find(params[:reservation])
      r.update(status: true)

      flash[:notice] = "Congraulations! Your transaction has been successfully!"
      redirect_to root_url
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end


  private

	def generate_client_token
	  Braintree::ClientToken.generate
	end

end
