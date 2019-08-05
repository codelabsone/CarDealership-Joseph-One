def login
  @employee_numbers=[123123, 123456, 234234, 789789, 999999, 456789]
  puts "_____________________________________________________"
  puts "Enter your 6 digit employee number."
  puts "_____________________________________________________"
  @emp_num=gets.to_i
  @success=0
  if @employee_numbers.include? @emp_num
    @success+=1
    case @emp_num
      when 123123
        puts "Welcome Kevin"
      when 123456
        puts "Welcome Ben"
      when 234234
        puts "Welcome Jamie"
      when 789789
        puts "Welcome Jerry"
      when 999999
        puts "Welcome Homer"
      else 456789
        puts "Welcome Jake"
      end
  else
    puts "Invalid ID"
    login
  end
end
