module Mall
	class Warehouse
		def initialize
			@available_supplies = {
	        meat: TheMall::Item.new("Meat", 2),
	        fish: TheMall::Item.new("Fish", 2),
	        orange: TheMall::Fruit.new("Orange", 1),
	        vacuum: TheMall::Houseware.new("Vacuum", 20)				
	    	}
	    	@minimum_accepted_order = 20
	    end

	    def process_order(item_genre, shop)
	    	shipment = []
	    	@minimum_accepted_order.times {|shipment| << @available_supplies[item_genre]}
	    	##don't totally get this sentence
	    	
