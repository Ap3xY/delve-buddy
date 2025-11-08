# frozen_string_literal: true

require 'minitest/autorun'
require 'item_parser'

class ItemParserTest < Minitest::Test
  def test_parse_input_text_fossil_in_stash_tab
    input = "Item Class: Stackable Currency
    Rarity: Currency
    Shuddering Fossil
    --------
    Stack Size: 2/20
    --------
    More Speed modifiers
    No Mana modifiers
    --------
    Place in a Resonator to influence item crafting.
    Shift click to unstack."

    expected = { name: 'Shuddering Fossil',
                 item_class: 'Stackable Currency',
                 rarity: 'Currency',
                 stack_size: { current: '2', max: '20' },
                 modifiers: ['More Speed modifiers', 'No Mana modifiers'],
                 instructions: ['Place in a Resonator to influence item crafting.', 'Shift click to unstack.'] }

    assert_equal ItemParser.parse(input), expected
  end
end
