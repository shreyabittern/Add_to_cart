class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|

      t.timestamps
    end
    create_table :cart_items do |t|
  		t.shopping_cart_item_fields # Creates the cart items fields
		end
  end
end
