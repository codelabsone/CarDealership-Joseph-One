def call_data
  database=[]
  puts "What is your name?"
  @name=gets.chomp
  database.push(@name)
  puts "What style vehicle are you interested in?"
  @style=gets.chomp
  database.push(@style)
  puts "What color vehicle are you interested in?"
  @color=gets.chomp
  database.push(@color)
  puts "What make/model are you interested in?"
  @make_model=gets.chomp
  database.push(@make_model)
  puts "What is your budget?"
  @budget=gets.chomp
  database.push(@budget)
  puts "What is your estimated credit score?"
  @creditscore=gets.chomp
  database.push(@creditscore)
  puts "What do you want your monthly payments to be?"
  @monthly=gets.chomp
  database.push(@monthly)
  concatenated_data = database.join('| ')
  @database=concatenated_data
  puts @database
end
