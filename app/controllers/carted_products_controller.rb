class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user && current_user.cart.any?
    # @carted_products = CartedProduct.all.where(user_id: current_user.id, status: "carted")
    @carted_products = current_user.cart
  else
    flash[:warning] = "Why don't you add something to your cart"
    redirect "/"
  end

  def create
    # @stamp = Stamp.find(params[:stamp_id])
    carted_product = CartedProduct.new(
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      stamp_id: params[:stamp_id],
                      status: "carted"
                      )

    carted_products.save
    flash[:success] = "Item added to Cart"
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Item Removed From Cart"
    redirect_to "/carted_products"
  end
end
