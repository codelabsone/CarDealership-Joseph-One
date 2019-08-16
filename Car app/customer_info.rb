require_relative "customer_database"
require 'csv'



class Database
  def initialize (info)
    @info = info
  end
  def questions
    customer_info()
  end
  def to_s
    "#{@info}"
  end
end


def cust_info
  @full_customer_db = [File.readlines('full_customer_db.csv')]
  puts "Would you like to: \nadd customer info[1] \nview the database[2] \ngo back[3]?"
  answer = gets.chomp.to_i
  if answer == 1
    cust1= Database.new(customer_info)
    # @customer_array= [cust1]
    # @full_customer_db.push(@customer_array)
    File.open("full_customer_db.csv", "w+") do |f|
      # @full_customer_db.each { |element| f.puts(element) }
      f.puts(cust1)
    end
    puts @customer_array

  elsif answer == 2
    puts @full_customer_db
  else
    puts "Invalid choice"
    cust_info
  end
end
