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
State.destroy_all

 

states_hash = {
    "AL" => "https://cdn.civil.services/us-states/flags/alabama-large.png",
    "AK" => "https://cdn.civil.services/us-states/flags/alaska-large.png",
    "AZ" => "https://cdn.civil.services/us-states/flags/arizona-large.png",
    "AR" => "https://cdn.civil.services/us-states/flags/arkansas-large.png",
    "CA" => "https://cdn.civil.services/us-states/flags/california-large.png",
    "CO" => "https://cdn.civil.services/us-states/flags/colorado-large.png",
    "CT" => "https://cdn.civil.services/us-states/flags/connecticut-large.pngt",
    "DE" => "https://cdn.civil.services/us-states/flags/delaware-large.png",
    "DC" => "District Of Columbia",
    "FL" => "https://cdn.civil.services/us-states/flags/florida-large.png",
    "GA" => "https://cdn.civil.services/us-states/flags/georgia-large.png",
    "HI" => "https://cdn.civil.services/us-states/flags/hawaii-large.png",
    "ID" => "https://cdn.civil.services/us-states/flags/idaho-large.png",
    "IL" => "https://cdn.civil.services/us-states/flags/illinois-large.png",
    "IN" => "https://cdn.civil.services/us-states/flags/indiana-large.png",
    "IA" => "https://cdn.civil.services/us-states/flags/iowa-large.png",
    "KS" => "https://cdn.civil.services/us-states/flags/kansas-large.png",
    "KY" => "https://cdn.civil.services/us-states/flags/kentucky-large.png",
    "LA" => "https://cdn.civil.services/us-states/flags/louisiana-large.png",
    "ME" => "https://cdn.civil.services/us-states/flags/maine-large.png",
    "MD" => "https://cdn.civil.services/us-states/flags/maryland-large.png",
    "MA" => "https://cdn.civil.services/us-states/flags/massachusetts-large.png",
    "MI" => "https://cdn.civil.services/us-states/flags/michigan-large.png",
    "MN" => "https://cdn.civil.services/us-states/flags/minnesota-large.png",
    "MS" => "https://cdn.civil.services/us-states/flags/mississippi-large.png",
    "MO"=>"https://cdn.civil.services/us-states/flags/missouri-large.png",
    "MT"=>"https://cdn.civil.services/us-states/flags/montana-large.png",
    "NE"=>"https://cdn.civil.services/us-states/flags/nebraska-large.png",
    "NV"=>"https://cdn.civil.services/us-states/flags/nevada-large.png",
    "NH"=>"https://cdn.civil.services/us-states/flags/new-hampshire-large.png",
    "NJ"=>"https://cdn.civil.services/us-states/flags/new-jersey-large.png",
    "NM"=>"https://cdn.civil.services/us-states/flags/new-mexico-large.png",
    "NY"=>"https://cdn.civil.services/us-states/flags/new-york-large.png",
    "NC"=>"https://cdn.civil.services/us-states/flags/north-carolina-large.png",
    "ND"=>"https://cdn.civil.services/us-states/flags/north-dakota-large.png",
    "OH"=>"https://cdn.civil.services/us-states/flags/ohio-large.png",
    "OK"=>"https://cdn.civil.services/us-states/flags/oklahoma-large.png",
    "OR"=>"https://cdn.civil.services/us-states/flags/oregon-large.png",
    "PA"=>"https://cdn.civil.services/us-states/flags/pennsylvania-large.png",
    "PR"=>"Puerto Rico",
    "RI"=>"https://cdn.civil.services/us-states/flags/rhode-island-large.png",
    "SC"=>"https://cdn.civil.services/us-states/flags/south-carolina-large.png",
    "SD"=>"https://cdn.civil.services/us-states/flags/south-dakota-large.png",
    "TN"=>"https://cdn.civil.services/us-states/flags/tennessee-large.png",
    "TX"=>"https://cdn.civil.services/us-states/flags/texas-large.png",
    "UT"=>"https://cdn.civil.services/us-states/flags/utah-large.png",
    "VT"=> "https://cdn.civil.services/us-states/flags/vermont-large.png",
    "VI"=>"Virgin Islands",
    "VA"=> "https://cdn.civil.services/us-states/flags/virginia-large.png",
    "WA"=>"https://cdn.civil.services/us-states/flags/washington-large.png",
    "WV"=>"https://cdn.civil.services/us-states/flags/west-virginia-large.png",
    "WI"=>"https://cdn.civil.services/us-states/flags/wisconsin-large.png",
    "WY"=>"https://cdn.civil.services/us-states/flags/wyoming-large.png"
}


states_hash.map do |key, val|
    State.create(name: key, url: val)
end
# states_hash.map do |abbreviation, state|
#    State.new(name: abbreviation)
# end

# states_info.each do |state, val|
#     states_hash.each do |abb|
#     if(state["state"] === abb[1])
#         State.create(name: abb[0], url: state["state_flag_url"])
#     end
# end
# end




address1 = Address.create(street: "13507 Hidden Dell Ct.", city: "Houston", state: "TX", zip: 77059 )
address2 = Address.create(street: "234 Rainbow Lane", city: "Austin", state: "TX", zip: 97284)
address3 = Address.create(street: "9837 Seaway St.", city: "Dallas", state: "TX", zip: 22749)
address4 = Address.create(street: "8276 Puppy Haven", city: "San Diego", state: "CA", zip: 35987)
address5 = Address.create(street: "2747 Centre St.", city: "Los Angeles", state: "CA", zip: 18673)


# State.all.map do |state|
#     Address.all.map do |address|
#     if(address["state"] === state["name"])
#         Addstate.create(address_id: address.id , state_id: state.id )
#     end
# end
# end


    

Postcard.create(message: "Hey this is cool!", name: "Michael Greene", address_id: address1.id )
Postcard.create(message: "I love guitars.", name: "Austin Puckett", address_id: address2.id)
Postcard.create(message: "Dogs are my favorite.", name: "Ryan Daley", address_id: address3.id)
Postcard.create(message: "I love food.", name: "Emma Gouti", address_id: address4.id)
Postcard.create(message: "Yoga is the best.", name: "Claire Nguyen", address_id: address5.id)

# Postcard.all.each do |postcard|
#     Addstate.all.each do |state|
#         if(state[:address_id] === postcard[:address_id])
#             postcard[:state_id] = state[:state_id]
#         end
#     end
# end

