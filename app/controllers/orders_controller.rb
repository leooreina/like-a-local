class OrdersController < ApplicationController
  def index
    @users = User.all
    @experience = Experience.find(params[:experience_id])
    @orders = policy_scope(Order).order(created_at: :desc)
  end

  def new
    @experience = Experience.find(params[:experience_id])
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    @experience = Experience.find(params[:experience_id])
    @order.experience = @experience
    @order.user = current_user
    authorize @order

    if @order.save
      redirect_to my_experiences_path, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def edit
    set_order
    @order.edit(order_params)
    authorize @order
  end

  def destroy
    set_order
    @order.destroy
    redirect_to my_experiences_path
  end

  def show
    set_order
  end

  private

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def order_params
    params.require(:order).permit(:attendees, :date, :experience_id, :user_id)
  end
end
