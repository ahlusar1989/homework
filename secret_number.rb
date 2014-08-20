def plural (s, p, n)
	if n  == 1
		return s
	else
		return p
end 

#number = rand(10) #should I use this? Or should I use an array. I think this makes far more sense than the other method (rand) 
guess = gets.chomp.to_i
num_guesses = 3
num_guesses -= 1
number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
Inf = 1.0/0.0

###Introduction/welcome

puts "Hello welcome to this random game, ironically called, guess my secret random number"
puts "I'm thinking of a number between 1 and 10"
puts "You have only 3 attempts to guess. The odds are in your favor."

name = gets.chomp
location = gets.chomp

puts "Thank you. Welcome #{name} to this atrociously inane exercise in probability." 
put "Even though you are located in #{location} I certainly hope you forgive me for putting you through this ordeal"


#conditionals

3.downto(1) do |n|
	if number.include?(-Inf..0 && 0..Inf)
		puts "Please make sure that your number is within the set range!"
	elsif guess > number
		puts "Not quite.....you have #{plural('guess', 'guesses', 'num_guesses')} attempts left!"
	elsif guess < number
		puts "Not quite.....you have #{plural('guess', 'guesses', 'num_guesses')} attempts left!"
	else
		if guess == number
		puts "You guessed correctly! Congratulations! You wasted some valuable time."
end
end








