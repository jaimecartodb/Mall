require_relative "/Users/jaimedemora/Ironhack/Week3/Mall/mall.rb"
fruit = Mall::Item.new("fruit", 20, 5)
salad = Mall::Item.new("salad", 38, 5)
cart1 = Mall::ShoppingCart.new
cart1.add_new_item(fruit)
cart1.add_new_item(salad)
puts cart1.checkout
