# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/delve_buddy'

class DelveBuddyTest < Minitest::Test
  def test_coolness_off_the_charts
    assert_equal DelveBuddy.new.coolness, 11
  end
end
