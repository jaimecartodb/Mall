module Mall

	class ShoppingCart
		def initialize
			@items = []
		end

		def add_new_item(item)
			@items << item
		end

		def checkout
		end

	end
end