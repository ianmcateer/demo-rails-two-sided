class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def sales
    @orders = Order.all.where(seller: current_user).order("created_at DESC")
  end

  def purchases
    @orders = Order.all.where(buyer: current_user).order("created_at DESC")
  end

  # GET /orders/new
  def new
    @order = Order.new
    @listing = Listing.find(params[:listing_id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @listing = Listing.find(params[:listing_id])
    @listing.update_attribute(:visible, 'false')
    @listing.save
    @seller = @listing.user


    @order.listing_id = @listing.id
    @order.buyer_id = current_user.id
    @order.seller_id = @seller.id

    # customer = Stripe::Customer.create(
    #   email: params[:stripeEmail],
    #   source: params[:stripeToken]
    # )
    #
    # token = params[:stripeToken]
    #
    # charge = Stripe::Charge.create({
    #     amount: (@listing.price * 100).floor,
    #     currency: 'aud',
    #     description: 'Example charge',
    #     :customer => customer.id,
    #     source: token,
    # })

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: (@listing.price * 100).floor,
      description: 'Rails Stripe customer',
      currency: 'aud'
    )

    respond_to do |format|
      if @order.save
        format.html { redirect_to root_url, notice: "Thanks for ordering!" }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :city, :state)
    end
end
