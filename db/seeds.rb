# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1
# well1
# SvartGull
# 6643829.0
# 591936.0
# UTM Zone 32 - WGS84, Meters
# Norway
# N/A
# Akershus
# Oslo
# Lilleaker
# CCVest
# Jurassic
# 2
# well02
# statoil
# 6643829.0
# 591936.0
# UTM Zone 32 - WGS84, Meters
# Norway
# N/A
# Akershus
# Oslo
# Lilleaker
# CCVest
# Jurassic

def rand_range (min, max)
  output = rand(0..(max - min)) + min
  output
end

Well.destroy_all
puts "--> Destroyed all previous records"

10.times do |i|

  well = Well.new

  well.name = Faker::Space.planet + rand(20).to_s
  well.customer = Faker::Company.name.gsub(' ', '_')
  well.northing = rand_range(6500829, 6900829)
  well.easting = rand_range(451936, 651936)
  well.coordinate_system = "UTM Zone 32 - WGS84, Meters"
  well.country = "Norway"
  well.state = Faker::Address.state
  well.county = Faker::Address.city + "county"
  well.city = Faker::Address.city
  well.area = Faker::Address.community
  well.field = Faker::GreekPhilosophers.name
  well.structure = Faker::Cosmere.shard
  well.save!

end

puts "--> Created #{Well.count} wells"