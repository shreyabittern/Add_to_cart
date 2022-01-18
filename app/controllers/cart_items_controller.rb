class CartItemsController < ApplicationController
	def index
    unless current_user.cart.present?
      Cart.create(user_id: current_user.id)
    end
    
    @cart = current_user.cart
		@cart_items = @cart.cart_items#current_user.cart.cart_items
	end
	respond_to do |format|
      format.html { redirect_to carts_url, notice: "Cart was successfully destroyed." }
      format.json { head :no_content }
    end

 def show
 	
 end

	def destroy
  @cart = current_user.cart
  @product = CartItem.find_by(id: params[:cart_item_id]).item
  @cart.remove(@product, 1)
  respond_to do |format|
    format.html { redirect_to cart_items_url }
    format.json { head :no_content }
  end
end


def total
  subtotals.sum
end
  
end