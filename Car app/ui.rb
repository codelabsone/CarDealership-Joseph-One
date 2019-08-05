require_relative 'services'

def ui
  puts "Would you like to access a service?[yes/no]"
  while @user_input1 != "NO"
    @user_input1= gets.chomp.upcase.to_s
      if @user_input1 == "YES"
        services()
      elsif @user_input1 == "NO"
        puts "Have a nice day!"
        exit
      else
        puts "Invalid choice"
      end
        puts "Would you like to access a service?[yes/no]"
        @user_input1= gets.chomp.upcase.to_s
        if @user_input1 == "NO"
          puts "Have a nice day!"
          exit
        end
  end
end
