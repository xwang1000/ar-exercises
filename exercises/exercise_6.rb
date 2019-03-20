require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Nancy", last_name: "Shmancy", hourly_rate: 200)
@store1.employees.create(first_name: "Bash", last_name: "Shellsy", hourly_rate: 12)
@store1.employees.create(first_name: "Scott", last_name: "Christian", hourly_rate: 30)
@store2.employees.create(first_name: "Pedro", last_name: "Dedecon", hourly_rate: 300)
@store2.employees.create(first_name: "Maria", last_name: "Conner", hourly_rate: 80)

puts "There are #{Employee.count} employees."