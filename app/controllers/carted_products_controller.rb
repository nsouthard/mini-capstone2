class CartedProductsController < ApplicationController

  def create
    @stamp = Stamp.find(params[:stamp_id])
    carted_product = Carted_Product.new(
                      quantity: params[:quantity],
                      user_id: current_user.id,
                      stamp_id: params[:stamp_id],
                      status: "carted",
                      subtotal: @stamp.price,
                      tax: @stamp.tax,
                      total: @stamp.total
                      )

    carted_product.save
    redirect_to "/cart"
  end

end
