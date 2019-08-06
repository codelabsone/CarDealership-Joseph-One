require_relative 'car_inventory'
require_relative 'car_loan'
require_relative 'customer_info'

def services
  puts "What would you like to view? |Inventory[1], Loan[2], Customer[3], Exit[4]|"
  while @user_input2 !="EXIT"
    @user_input2 = gets.chomp.upcase.to_s
      if @user_input2 == 'INVENTORY'||@user_input2=='INV'||@user_input2=="1"
        puts "Current cars in inventory:"
        puts @car_lot
      elsif @user_input2 == 'LOAN'||@user_input2=="2"
        loan
      elsif @user_input2 == 'CUSTOMER'||@user_input2=="3"
        cust_info
      elsif @user_input2 == 'EXIT'||@user_input2=="4"
        puts "Thank you. Have a nice day!"
        exit
      else
        puts "Invalid choice."
      end
      puts "\nWhat would you like to view? |Inventory[1], Loan[2], Customer[3], Exit[4]|"
    end
end
