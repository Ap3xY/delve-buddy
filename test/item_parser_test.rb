# frozen_string_literal: true

require 'minitest/autorun'
require 'item_parser'

class ItemParserTest < Minitest::Test
  def setup
    @fossil_input = "Item Class: Stackable Currency\nRarity: Currency\nShuddering Fossil\n--------\nStack Size: 2/20\n--------\nMore Speed modifiers\nNo Mana modifiers\n--------\nPlace in a Resonator to influence item crafting.\nShift click to unstack."
  end

  def test_parse_sections_of_input_fossil
    assert_equal(ItemParser.parse(@fossil_input), {
                   item_class: 'Stackable Currency',
                   rarity: 'Currency',
                   name: 'Shuddering Fossil',
                   stack_size: '2/20',
                   modifiers: ['More Speed modifiers', 'No Mana modifiers'],
                   description: 'Place in a Resonator to influence item crafting.'
                 })
  end
end
