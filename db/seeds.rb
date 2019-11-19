# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

alice = User.new(email: "alice@gmail.com", password: "azerty", username: "Aliçounette", first_name: "Alice", last_name: "Denice")

bob = User.new(email: "bob@gmail.com", password: "azerty", username: "Boby", first_name: "bob", last_name: "Lebricoleur")

charlie = User.new(email: "charlie@gmail.com", password: "azerty", username: "chaleazy", first_name: "charlie", last_name: "Ztheron")

dede = User.new(email: "Dédé@gmail.com", password: "azerty", username: "Dédé", first_name: "Dédé", last_name: "Lecochon")

eric = User.new(email: "Eric@gmail.com", password: "azerty", username: "Riri", first_name: "Eric", last_name: "Cartman")

alice.save!
bob.save!
charlie.save!
dede.save!
eric.save!

# Offers
puts "==========================="
puts "Creating Offers"
puts "==========================="

offer1 = Offer.new(title: "Bricolage petits travaux", description: "Bob Lebricoleur Bricole", availability: "Le weekend", price: "12€/h", active: true, place:"Bordeaux", category: "Bricolage", user: bob)

offer2 = Offer.new(title: "Peinture", description: "Alice peint toutes pieces", availability: "Le weekend", price: "9€/h", active: true, place:"Paris", category: "Bricolage", user: alice)

offer3 = Offer.new(title: "Plomberie", description: "Charlie fait de la plomberie (en plus ça rime !)", availability: "Le weekend", price: "157€/h", active: true, place:"Brétigny sur Orge", category: "Plomberie", user: charlie)

offer1.save!
offer2.save!
offer3.save!

# Booking
puts "==========================="
puts "Creating Booking"
puts "==========================="

booking1 = Booking.new(adress: "26 rue sanche de pomiers, Bordeaux", status: false, offer: offer1, user:dede )

booking2 = Booking.new(adress: "Sur la lune", status: false, offer: offer2, user:eric )

booking3 = Booking.new(adress: "21 rue du lac", status: true, offer: offer3, user:eric )

booking1.save!
booking2.save!
booking3.save!


puts "==========================="
puts "Normalement ça a fonctionné !!! :)"
puts "==========================="
