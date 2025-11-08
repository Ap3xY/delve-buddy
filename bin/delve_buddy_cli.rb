require_relative '../lib/delve_buddy'
require_relative '../lib/price_fetcher'

fetcher = PriceFetcher.new

delve_buddy = DelveBuddy.new(price_fetcher: fetcher)

print 'Enter Item: '
item = gets.chomp

delve_buddy.check_price(item)
