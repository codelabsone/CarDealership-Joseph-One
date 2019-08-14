require_relative "car_questions"
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

@full_car_db=array1.join(" ")

def car_info
  puts "Would you like to add car info[1] or view the car database[2]?"
  answer = gets.chomp.to_i
  if answer == 1
    car1= Car.new(car_questions)
    @car_array= [car1]
    @full_car_db.push(@car_array)
    File.open("full_car_db.csv", "w+") do |f|
      @full_car_db.each { |element| f.puts(element) }
    end
    puts @car_array

  elsif answer == 2
    puts @full_car_db
  else
    puts "Invalid choice"
    car_info
  end
end
