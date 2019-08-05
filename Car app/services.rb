require_relative 'car_inventory'
require_relative 'car_loan'
require_relative 'customer_info'

def services
  puts "What would you like to view? [Inventory, Loan, Customer, Exit]"
  while @user_input2 !="EXIT"
    @user_input2 = gets.chomp.upcase.to_s
      if @user_input2 == 'INVENTORY'
        puts "Current cars in inventory:"
        puts @car_lot
      elsif @user_input2 == 'LOAN'
        loan()
      elsif @user_input2 == 'CUSTOMER'
        cust_info()
      elsif @user_input2 == 'EXIT'
        puts "Thank you. Have a nice day!"
        exit
      else
        puts "Invalid choice."
      end
        puts "\nWhat would you like to view? [Inventory, Loan, Customer, Exit]"
        @user_input2= gets.chomp.upcase.to_s
        if @user_input2 == "EXIT"
          puts "Have a nice day!"
          exit
        end
      end
end
