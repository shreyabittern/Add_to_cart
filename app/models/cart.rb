class Cart < ApplicationRecord
	acts_as_shopping_cart_using :cart_item	
	belongs_to :user								

	def taxes
		(subtotal - 10) * 8.3
	end

end
