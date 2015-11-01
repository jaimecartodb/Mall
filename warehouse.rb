module Mall
	class Warehouse
		def initialize
			@available_supplies = {
	        meat: Mall::Item.new("Meat", 2),
	        fish: Mall::Item.new("Fish", 2),
	        orange: Mall::Fruit.new("Orange", 1),
	        vacuum: Mall::Houseware.new("Vacuum", 20)				
	    	}
	    	@minimum_accepted_order = 20
	    end

	    def process_order(item_genre, shop)
	    	shipment = []
   		    @minimum_accepted_order.times {shipment << @available_supplies[item_genre]}
	    	##don't totally get this sentence
	    	shop.add_items_to_stock(shipment)
	    	receipt = calculate_shipment(shipment)
	    end

	    def calculate_shipment_price(shipment)
	    	shipment.reduce(0){|sum, item| sum + item.price}
	    	##what is this?
	    end
	end

end

