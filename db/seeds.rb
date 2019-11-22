# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

alice = User.new(email: "alice@gmail.com", password: "azerty", username: "Aliçounette", first_name: "Alice", last_name: "Denice", phone_number:"06.99.00.28.60")

bob = User.new(email: "bob@gmail.com", password: "azerty", username: "Boby", first_name: "bob", last_name: "Lebricoleur", phone_number:"06.99.00.28.60")

charlie = User.new(email: "charlie@gmail.com", password: "azerty", username: "charleazy", first_name: "charlie", last_name: "Ztheron", phone_number:"06.99.00.28.60")

dede = User.new(email: "Dédé@gmail.com", password: "azerty", username: "Dédé", first_name: "Dédé", last_name: "Lecochon", phone_number:"06.99.00.28.60")

eric = User.new(email: "Eric@gmail.com", password: "azerty", username: "Riri", first_name: "Eric", last_name: "Cartman", phone_number:"06.99.00.28.60")


alice.save!
bob.save!
charlie.save!
dede.save!
eric.save!

# Offers
puts "==========================="
puts "Creating Offers"
puts "==========================="

offer1 = Offer.new(title: "Bricolage petits travaux", description: "Bob Lebricoleur Bricole", price: "12€/h", active: true, address:"Bordeaux", category: "Bricolage", user: bob, date: "2019/12/1")

offer2 = Offer.new(title: "Peinture", description: "Alice peint toutes pieces", price: "9€/h", active: true, address:"Paris", category: "Bricolage", user: alice, date: "2019/12/5")

offer3 = Offer.new(title: "Plomberie", description: "Charlie fait de la plomberie (en plus ça rime !)", price: "157€/h", active: true, address:"Brétigny sur Orge", category: "Plomberie", user: charlie, date: "2019/12/24")

offer1.save!
offer2.save!
offer3.save!

# Booking
puts "==========================="
puts "Creating Booking"
puts "==========================="

booking1 = Booking.new(adress: "26 rue sanche de pomiers, Bordeaux", status: false, offer: offer1, user:dede, description: "Pose de B-A-13" )

booking2 = Booking.new(adress: "Sur la lune", status: false, offer: offer2, user:eric, description: "Peindre une chambre" )

booking3 = Booking.new(adress: "21 rue du lac", status: false, offer: offer3, user:eric, description: "Plomberie pour la salle de bain" )

booking4 = Booking.new(adress: "67 cours de chez ta Grand Mere", status: false, offer: offer3, user:alice, description: "Plomberie pour les Waters" )

booking1.save!
booking2.save!
booking3.save!
booking4.save!


puts "==========================="
puts "Normalement ça a fonctionné !!! :)"
puts "==========================="
