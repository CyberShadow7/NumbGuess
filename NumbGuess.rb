puts "Welcome to this number guessing game\n\n"
puts "Every time you find the answer in less than a variable number of tries, you will level up to higher ranges"
puts ""
time = 0
puts "Level 1 : [0..2] no decimals; 3 tries"
numero1 = rand(0..2)
#puts numero1
try1 = Integer(gets.chomp)
while try1 != numero1
  puts "Wrong... Try again!"
  time = time + 1
  puts "#{time} tries until now\n\n"
  try1 = Integer(gets.chomp)
end
if time <= 3
  puts "Congrats! You advanced to Level 2 [0..10]"
  time = 0
else
  puts "Sorry, you lost :("
  puts "See you next time"
  exit
end
numero2 = rand(0..10)
#puts numero2
try2 = Integer(gets.chomp)
while try2 != numero2
  puts "Wrong... Try again!"
  time = time + 1
  puts "#{time} number of tries until now\n\n"
  try2 = Integer(gets.chomp)
end
if time <= 5
  puts "Congratulations! You passed Level 2!!!"
  puts "Time for Level 3 [10..50] 20 tries"
  time = 0
else
  puts "Sorry but you lost at Level 2..."
  puts "Better luck next time"
  exit
end
numero3 = rand(10..50)
#puts numero3
try3 = Integer(gets.chomp)
while try3 != numero3
  puts "Wrong... Try again!"
  time = time + 1
  puts "#{time} number of tries until now\n\n"
  try3 = Integer(gets.chomp)
end
if time <= 20
  puts "YAY! Passed Level 3!"
  puts "Time for Level 4 [100..200] (50 tries)"
else
  puts "Sorry you lost at Level 3."
  puts "Better luck next time!"
  exit
end
numero4 = rand(100..200)
#puts numero4
puts "And your guess is..."
try4 = Integer(gets.chomp)
while try4 != numero4
  puts "Sorry! Try again!"
  time = time + 1
  puts "#{time} number of tries until now\n\n"
  try4 = Integer(gets.chomp)
end
if time <= 50
  puts "Congratulations! You did it!"
  puts "You passed all of the levels :)"
  puts "We are going to credit you a certificate of completion so we need your first name and last name"
  puts "What is your first name? You can change it, if something is wrong, later."
  fname = String(gets.chomp)
  puts "What is your last name? You can change it, if something is wrong, later."
  lname = String(gets.chomp)
  puts "Are you #{fname} #{lname}? (y/n)"
  sure = String(gets.chomp)
  if sure.capitalize == 'N'
    while sure.capitalize == 'N'
      puts "What is your first name?"
      fname = String(gets.chomp)
      puts "What is your last name?"
      lname = String(gets.chomp)
      puts "Are you #{fname} #{lname}?"
      sure = String(gets.chomp)
    end
  end
  if sure.capitalize == 'Y'
    congr = "This certificate verifies that #{fname} #{lname} completed this number guessing game. You can try too!"
    certificate = File.write("certificate_#{fname}_#{lname}.txt", congr)
    puts "Certificate created successfully in running folder :)"
    puts "Have fun :)"
  end
else
  puts "Well, you made it to the final Level (4) but didn't beat it :(("
  puts "Hope next time you beat it :)"
  exit
end
exit
