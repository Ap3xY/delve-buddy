require_relative '../lib/delve_buddy'
require_relative '../lib/price_fetcher'

puts 'Welcome to Delve Buddy!'
puts "Copy & paste an item (ctrl + c, ctrl + v) and hit Enter. Or type 'exit' or 'quit'."

loop do
  print '> '
  input = gets.chomp
  break if %w[exit quit].include?(input.downcase)

  puts "Please enter an item (or type 'exit')."

  if input.strip.empty?
    puts "Please enter an item ID (or type 'exit')."
    next
  end

  DelveBuddy.new(price_fetcher: PriceFetcher.new).check_price(input)
end

puts 'Goodbye!'
