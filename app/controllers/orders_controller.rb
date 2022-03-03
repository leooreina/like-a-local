class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @experience = Experience.find(params[:experience_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @experience = Experience.find(params[:experience_id])
    @order.experience = @experience
    @order.user = current_user

    if @order.save
      redirect_to experience_order_path(params[:experience_id], @order), notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:attendees, :experience_id, :user_id)
  end
end