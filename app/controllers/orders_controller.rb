class OrdersController < ApplicationController
  
  def create
    @stamp = Stamp.find(params[:stamp_id])
    order = Order.new(
                      quantity: params[:quantity],
                      user_id: current_user.id,
                      stamp_id: params[:stamp_id],
                      subtotal: @stamp.price,
                      tax: @stamp.tax,
                      total: @item.total
                      )


    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end

end
