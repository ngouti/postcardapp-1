# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Postcard.destroy_all 
# had to be first because Address is a foriegn key
Address.destroy_all


address1 = Address.create(street: "13507 Hidden Dell Ct.", city: "Houston", state: "TX", zip: 77059 )
address2 = Address.create(street: "234 Rainbow Lane", city: "Austin", state: "TX", zip: 97284 )
address3 = Address.create(street: "9837 Seaway St.", city: "Dallas", state: "TX", zip: 22749)
address4 = Address.create(street: "8276 Puppy Haven", city: "San Diego", state: "CA", zip: 35987)
address5 = Address.create(street: "2747 Centre St.", city: "Los Angeles", state: "CA", zip: 18673)


Postcard.create(message: "Hey this is cool!", name: "Michael Greene", address_id: address1.id)
Postcard.create(message: "I love guitars.", name: "Austin Puckett", address_id: address2.id)
Postcard.create(message: "Dogs are my favorite.", name: "Ryan Daley", address_id: address3.id)
Postcard.create(message: "I love food.", name: "Emma Gouti", address_id: address4.id)
Postcard.create(message: "Yoga is the best.", name: "Claire Nguyen", address_id: address5.id)
