def loan()
  puts "What is the loan amount?"
  principle = gets
  if principle =~ /^-?[0.0-9.9]+$/
    puts "Thank you!"
  else
    puts "Invalid input."
    abort
  end
    puts "What is the qualified interest rate?"
    rate = gets
  if rate =~ /^-?[0.0-9.9]+$+/
      puts "Thank you!"
  else
      puts "Invalid input."
      abort
  end
    puts "What loan length (months) interests you?"
    n = gets
  if n =~ /^-?[0.0-9.9]+$/
    puts "Thank you!"
  else
    puts "Invalid input."
    abort
  end
  true_rate = rate.to_f / 1200
  total_loan = ((principle.to_i + 175) * true_rate * n.to_i) + principle.to_i
  monthly_payment = total_loan.to_f / n.to_f
  puts "Your monthly payment will be #{monthly_payment.round(2)}."
  puts "Thank you for shopping at Big Ben's Car Barn"
end
