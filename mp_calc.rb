#This chunk of code prompts user for information about loan.

puts "What is the loan amount?"
p = gets

if p =~ /^-?[0-9]+$/
  puts "Thank you!"
else
  puts "Invalid input."
  abort
end

  puts "What is the qualified interest rate?"
  r = gets

if r =~ /^-?[0-9]+$/
    puts "Thank you!"
else
    puts "Invalid input."
    abort
end

  puts "What loan length (months) interests you?"
  n = gets

if n =~ /^-?[0-9]+$/
  puts "Thank you!"
else
  puts "Invalid input."
  abort
end

#This chunk of code takes user inputs and calculates monthly payment.

tr = r.to_f / 1200
tl = (p.to_i*tr*n.to_i) + p.to_i
mp = tl.to_f / n.to_f
puts "Your monthly payment will be #{mp.round(2)}."
