@employee_numbers=[123123, 123456, 234234, 789789, 999999, 456789]

puts "_____________________________________________________"
puts "Enter your employee number"
puts "_____________________________________________________"
@emp_num = gets.to_i

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
  when 456789
    puts "Welcome Jake"
  else puts "Invalid ID, terminating session."
end
