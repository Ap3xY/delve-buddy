##
# This class represents the main orchesstrator of the app
class DelveBuddy
  def initialize(price_fetcher:)
    @price_fetcher = price_fetcher
  end

  def check_price(item)
    price = @price_fetcher.fetch(item)

    puts "The Price for #{item} is #{price}"
  end
end
