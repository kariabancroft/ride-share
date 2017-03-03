require 'faker'
require 'csv'

# CSV.open('support/drivers.csv','w') do |line|
#   line << %w(driver_id name license_plate)
#   100.times do |i|
#     line << [(i + 1), Faker::Name.unique.name, Faker::Vehicle.vin]
#   end
# end

# CSV.open('support/riders.csv','w') do |line|
#   line << %w(rider_id name phone_num)
#   300.times do |i|
#     line << [(i + 1), Faker::Name.unique.name, Faker::PhoneNumber.unique.phone_number]
#   end
# end
# 
# CSV.open('support/trips.csv','w') do |line|
#   line << %w(trip_id driver_id rider_id date rating)
#   600.times do |i|
#     line << [i + 1, rand(100), rand(300), Faker::Date.backward(725), rand(1..5)]
#   end
# end
