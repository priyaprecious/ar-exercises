require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201}
    validates :store_id, presence: true
  end
  
  class Store < ActiveRecord::Base
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_intiger: true, greater_than: 0 }
  end
  
  puts "Give me a store name please!"
  @new_store = gets.chomp
  Store.create(name: @new_store)
  puts @new_store.errors.full_messages