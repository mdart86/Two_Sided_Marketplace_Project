class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])

    Stripe.api_key = ENV['STRIPE_SK_TEST']
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      success_url: order_success_url,
      cancel_url: order_cancel_url,
      line_items: [
        {
          name: @product.name,
          description: "the model you have bought is: #{@product.aircraft_model}",
          amount: (@product.price * 100).to_i,
          currency: 'aud',
          quantity: 1
        }
      ]
    )

  end

    # **********************************************************
    # tested to make sure it sending through the correct details
    # render json: params
    # **********************************************************

  def success
    render html: "<h2>Thank you, your order was successfull, get excited</h2>".html_safe 
    
    # redirect_to "http://localhost:3000/"

    # @orders = current_user.create_order(order_params)
    # order = Order.create(:name, :description, :amount, :quantity)

  end

  def cancel
    render html: "<h2>Your order was cancelled... redirecting you back to the Buying Area</h2>".html_safe 
    
  
  end

  # private
  # def order_params
  #   params.require(:order).permit(:name, :description, :amount, :quantity)
  # end
end