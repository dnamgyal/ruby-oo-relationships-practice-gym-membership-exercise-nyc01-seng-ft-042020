# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


don = Lifter.new("Don", 100)
jon = Lifter.new("Jon", 430)

powerhouse = Gym.new("Powerhouse")
bigsix = Gym.new("Big Six")

membership1 = Membership.new(don, bigsix, 25)
membership2 = Membership.new(jon, bigsix, 55)

don.sign_up(powerhouse, 50)




bigsixmemberships = bigsix.memberships



binding.pry

puts "Gains!"
