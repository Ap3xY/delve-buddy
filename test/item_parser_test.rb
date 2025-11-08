# frozen_string_literal: true

require 'minitest/autorun'
require 'item_parser'

class ItemParserTest < Minitest::Test
  def test_parse_first_section_of_input_fossil
    input = "Item Class: Stackable Currency\nRarity: Currency\nShuddering Fossil\n--------\nStack Size: 2/20\n--------\nMore Speed modifiers\nNo Mana modifiers\n--------\nPlace in a Resonator to influence item crafting.\nShift click to unstack."
    assert_equal({ item_class: 'Stackable Currency', rarity: 'Currency', name: 'Shuddering Fossil' },
                 ItemParser.parse(input))
  end
end
