
require_relative 'car_inventory'
require_relative 'car_loan'
#require_relative 'customer_info'
#require_relative 'customer_databse'



#basic user interface
puts "What would you like to access a service?[yes/no]"
user_input1= gets.chomp.upcase.to_s
while user_input1 !="NO"

  puts "What would you like to view? [Inventory, Loan, Customer]"
    user_input2= gets.chomp.upcase.to_s
    if user_input2 =='INVENTORY'
      puts "Current cars in inventory:"
      puts @car_lot
    elsif user_input2 == 'LOAN'
      loan()
    elsif user_input2 == 'CUSTOMER'
      #cust_info()
    else
      puts "Invalid choice."
      abort
    end
      user_input1= gets.chomp.upcase.to_s
end
