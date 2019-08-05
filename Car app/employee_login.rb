def login
  @employee_numbers=[123123, 123456, 234234, 789789, 999999, 456789]
  puts "_____________________________________________________"
  puts "Enter your 6 digit employee number."
  puts "_____________________________________________________"
  @emp_num=gets.to_i
  @success=0
  if @employee_numbers.include? @emp_num
    @success+=1
    puts "Welcome Comrade"
  else
    puts "Invalid ID"
  end
end
