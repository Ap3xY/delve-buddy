# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/delve_buddy'

class DelveBuddyTest < Minitest::Test
  def test_check_price_returns_price
    assert_equal DelveBuddy.new.check_price, 6
  end
end
