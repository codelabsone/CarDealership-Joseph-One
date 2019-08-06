def car_questions
  puts "What is the make?"
  @make=gets.chomp.upcase
  puts "What is the model?"
  @model=gets.chomp.upcase
  puts "What is the year?"
  @year=gets.chomp
  puts "How many miles?"
  @miles=gets.chomp
  puts "What is the value?"
  @price=gets.chomp
  cinfo = "#{@make}, #{@model}, #{@year}, #{@miles}, $#{@price}"
end
