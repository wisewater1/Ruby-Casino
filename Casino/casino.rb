require_relative 'games/slot_machine'
require_relative 'games/guessing_game'

def display_menu
  puts "Welcome to the Ruby Casino!"
  puts "1. Slot Machines"
  puts "2. Guessing Game"
  puts "3. Exit"
end

def main
  loop do
    display_menu
    print "Choose a game to play (1-3): "
    choice = gets.chomp.to_i

    case choice
    when 1
      play_slot_machine
    when 2
      play_guessing_game
    when 3
      puts "Thank you for playing! Goodbye!"
      break
    else
      puts "Invalid choice. Please select 1, 2, or 3."
    end
  end
end

main
