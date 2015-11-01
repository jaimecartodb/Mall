require_relative("/Users/jaimedemora/Ironhack/Week3/Mall/mall.rb")


warehouse = Mall::Warehouse.new

initial_stock = []
2.times{|n| initial_stock << Mall::Item.new("Fish", 10) << Mall::Item.new("Meat", 20) << Mall::Fruit.new("Orange", 2) << Mall::Houseware.new("Vacuum", 150)}
metropolis = Mall::Shop.new("Metropolis", 2000, warehouse, Mall::ShoppingCart)
metropolis.add_items_to_stock(initial_stock)

metropolis.receive_new_visit
metropolis.display_stock