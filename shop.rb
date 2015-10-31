module Mall
	class Shop
		def initialize(budget)
			@budget = budget
			@stock = []
		end

		def show_items
			@@self.each do |item|
				puts |item|
			end
		end

		def add_new_item(item)
			@items << item
		end

		def decrease_item(item)
			@items.delete(item)
		end
	end

end