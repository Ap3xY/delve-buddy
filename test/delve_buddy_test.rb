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
    item_data =
      {
        name: 'Shuddering Fossil',
        item_class: 'Stackable Currency',
        rarity: 'Currency',
        stack_size: { current: '2', max: '20' },
        modifiers: ['More Speed modifiers', 'No Mana modifiers'],
        instructions: "Place in a Resonator to influence item crafting.\nShift click to unstack."
      }

    assert_output(/6/) { DelveBuddy.new(price_fetcher: FakeFetcher.new).check_price(item_data) }
  end
end
