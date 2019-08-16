require_relative "car_questions"
require_relative "services"
require 'csv'
array1=CSV.read("full_car_db.csv")
class Car
  def initialize (cinfo)
    @cinfo = cinfo
  end
  def questions
    car_questions()
  end
  def to_s
    "#{@cinfo}"
  end
end

def car_info
  @full_car_db = [File.readlines('full_car_db.csv')]
  puts "Would you like to: \nadd car info[1] \nview the car database[2] \ngo back[3]?"
  answer = gets.chomp.to_i
  if answer == 1
    car1= Car.new(car_questions)
    # @car_array= [car1]
    # @full_car_db.push(@car_array)
    File.open("full_car_db.csv", "a") do |f|
      # @full_car_db.each { |element| f.puts(element) }
      f.puts(car1)
    end
    puts @car_array

  elsif answer == 2
    puts @full_car_db
  elsif answer == 3
    services
  else
    puts "Invalid choice"
    cust_info
  end
end
