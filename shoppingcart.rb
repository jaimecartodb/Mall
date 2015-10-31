module Mall

	class ShoppingCart
		def initialize
			@items = []
		end

		def add_new_item(item, quantity)
	      quantity.times {|quantity| @items << item}
	      ##need to better understand the structure
    	  puts "Added #{quantity} #{item.name} to the cart!"
    	end

		def checkout
			total_price = @items.reduce(0) {|total, item| total + item.apply_discount}
			##explain this sentence??
			total_price = apply_general_discount(total_price)
 		    puts "It's #{total_price}€. Thanks for your purchase :)!"
		end

		private

		def apply_general_discount(total_price)
			@items.count > 5 ? (total_price - (total_price / 10)) : total_price
		end

	end
end