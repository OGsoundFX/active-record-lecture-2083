# This is where you can create initial data for your app.
# require "faker"
require "rest-client"
require "json"

Restaurant.destroy_all

# Faker

# 10.times do
#   Restaurant.create(name: Faker::Cannabis.brand, address: Faker::Address.city, rating: rand(1..5))
# end

# API

response = RestClient.get("https://api.github.com/users")
parsed_response = JSON.parse(response)

parsed_response.first(10).each do |restaurant|
  Restaurant.create(name: restaurant["login"], address: restaurant["url"], rating: rand(1..5))
end
