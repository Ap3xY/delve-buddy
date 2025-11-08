# frozen_string_literal: true

require 'minitest/autorun'
require 'item_parser'

class ItemParserTest < Minitest::Test
  def setup
    @fossil_input = "Item Class: Stackable Currency\nRarity: Currency\nShuddering Fossil\n--------\nStack Size: 2/20\n--------\nMore Speed modifiers\nNo Mana modifiers\n--------\nPlace in a Resonator to influence item crafting.\nShift click to unstack."
    @resonator_input = "Item Class: Delve Stackable Socketable Currency\nRarity: Currency\nPrime Chaotic Resonator\n--------\nStack Size: 2/10\nRequires 4 (unmet) Socketed Fossils\n--------\nSockets: D D D D\n--------\nReforges a rare item with new random modifiers\n--------\nAll sockets must be filled with Fossils before this item can be used.\nShift click to unstack."
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

  def test_parse_sections_of_input_resonator
    assert_equal(ItemParser.parse(@resonator_input), {
                   item_class: 'Delve Stackable Socketable Currency',
                   rarity: 'Currency',
                   name: 'Prime Chaotic Resonator',
                   stack_size: '2/10',
                   modifiers: ['Reforges a rare item with new random modifiers'],
                   description: 'All sockets must be filled with Fossils before this item can be used.Shift click to unstack.'
                 })
  end
end
