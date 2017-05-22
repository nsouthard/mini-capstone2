class OrdersController < ApplicationController
  
  def create
    order = Order.new(
                      quantity: params[:quantity],
                      stamp_id: params[:stamp_id]
                      )

    order.calculate_subtotal
      order.calculate_tax
      order.calculate_total

    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end

end
