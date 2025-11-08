# frozen_string_literal: true

require 'minitest/autorun'
require 'delve_buddy'

class FakeFetcher
  def fetch(_item)
    6
  end
end

class DelveBuddyTest < Minitest::Test
  def test_check_price_returns_price
    assert_output(/6/) { DelveBuddy.new(price_fetcher: FakeFetcher.new).check_price('Tabula Rasa') }
  end
end
