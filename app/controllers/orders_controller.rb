class OrdersController < ApplicationController
  
  def create
    stamp = Stamp.find(params[:stamp_id])
    calculated_subtotal = stamp.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.05
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
                      quantity: params[:quantity],
                      stamp_id: params[:stamp_id],
                      user_id: current_user.id
                      subtotal: calculated_subtotal
                      tax: calculated_tax
                      calculated_total: calculated_total
                      )
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end

end
