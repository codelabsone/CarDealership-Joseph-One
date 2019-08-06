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
  cust1= Database.new(customer_info)
  customer_array= [cust1]
  puts customer_array
end
