def customer_info
  puts "What is your name?"
  @name=gets.chomp
  puts "What style vehicle are you interested in?"
  @style=gets.chomp
  puts "What color vehicle are you interested in?"
  @color=gets.chomp
  puts "What make/model are you interested in?"
  @make_model=gets.chomp
  puts "What is your budget?"
  @budget=gets.chomp
  puts "What is your estimated credit score?"
  @creditscore=gets.chomp
  puts "What do you want your monthly payments to be?"
  @monthly=gets.chomp
  info = "#{@name}, #{@style}, #{@color}, #{@make_model}, #{@budget}, #{@creditscore}, #{@monthly}"
end
