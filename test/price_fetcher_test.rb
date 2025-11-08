# frozen_string_literal: true

require 'minitest/autorun'
require 'price_fetcher'

class PriceFetcherTest < Minitest::Test
  def test_check_item_price
    assert_equal PriceFetcher.new.fetch('Tabula Rasa'), 6
  end
end
