##
# This class represents the main orchesstrator of the app
class DelveBuddy
  def initialize(price_fetcher:)
    @price_fetcher = price_fetcher
  end

  def check_price(item_data)
    price = @price_fetcher.fetch(item_data)

    puts "The Price for #{item_data[:name]} is #{price}"
  end
end
