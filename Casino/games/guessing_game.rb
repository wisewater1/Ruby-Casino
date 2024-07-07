# games/guessing_game.rb
def play_guessing_game
  number_to_guess = rand(1..10)
  attempts = 3

  puts "Welcome to the Guessing Game!"
  puts "I'm thinking of a number between 1 and 10. You have 3 attempts to guess it."

  attempts.times do
    print "Enter your guess: "
    guess = gets.chomp.to_i

    if guess == number_to_guess
      puts "Congratulations! You guessed the number!"
      return
    elsif guess < number_to_guess
      puts "Too low!"
    else
      puts "Too high!"
    end
  end

  puts "Sorry, you're out of attempts. The number was #{number_to_guess}."
end
