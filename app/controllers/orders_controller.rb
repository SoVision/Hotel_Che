class OrdersController < ApplicationController
  before_action :require_login, except: [:index]
  def index
  end

  def new
    @order=Order.new
  end
  def create
    @order = Order.new(order_params)

    if(@order.save)
      redirect_to Order
    else
      render 'new'
    end
  end

  def destroy
    @order = Order.find(params[:id])

    @order.destroy

    redirect_to Order
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if(@order.update(order_params))
      redirect_to Order
    else
      render 'edit'
    end
  end

  private def order_params
    params.require(:order).permit( :room_id, :client_id, :date, :during)
  end
end
