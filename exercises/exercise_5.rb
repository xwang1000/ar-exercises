require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

totalRevenue = Store.sum(:annual_revenue)
storeCount = Store.count
averageRevenue = totalRevenue / storeCount

@number_stores_more_than_1m = Store.where('annual_revenue > ?', 1_000_000).size

puts "The company's annual revenue from #{storeCount} stores: #{totalRevenue}"
puts "Average annual revenue for each store: #{averageRevenue}"
puts "Number of stores generating more than $1M annually: #{@number_stores_more_than_1m}"
