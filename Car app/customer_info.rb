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

def cust_info
  c1= Database.new(customer_info)
  car_array= [c1]
  puts car_array
end
