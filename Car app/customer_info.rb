require_relative "customer_database"
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

@full_db=[]

def load_players(from_file)
  File.readlines(from_file).each do |line|
    puts line
  end
end

def cust_info
  puts "Would you like to add customer info[1] or view the database[2]?"
  answer = gets.chomp.to_i
  if answer == 1
    cust1= Database.new(customer_info)
    @customer_array= [cust1]
    @full_db.push(@customer_array)
    File.open("full_db.csv", "w+") do |f|
      @full_db.each { |element| f.puts(element) }
    end
    puts @customer_array

  elsif answer == 2
    puts @full_db
  else
    puts "Invalid choice"
    cust_info
  end
end
