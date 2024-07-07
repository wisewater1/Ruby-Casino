# games/slot_machine.rb
def play_slot_machine
  symbols = ["🍒", "🍋", "🍊", "🍉", "⭐", "🔔"]
  result = []

  3.times { result << symbols.sample }

  puts "Spinning the slot machine..."
  sleep(1)
  puts result.join(" | ")

  if result.uniq.length == 1
    puts "Congratulations! You hit the jackpot!"
  elsif result.uniq.length == 2
    puts "You win a small prize!"
  else
    puts "Better luck next time!"
  end
end
