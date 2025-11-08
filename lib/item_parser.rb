# frozen_string_literal: true

#
## This class houses the parsing logic for the app
class ItemParser
  def self.parse(raw_text)
    item_sections = raw_text.split('--------')

    first_section = item_sections[0].split("\n").map(&:strip).reject(&:empty?)
    item_class, rarity, name = first_section
    item_class = item_class.split(':').map(&:strip)
    rarity = rarity.split(':').map(&:strip)

    second_section = item_sections[1].split("\n").map(&:strip).reject(&:empty?)
    second_section = second_section[0].split(':').map(&:strip)
    stack_size = second_section[1]

    third_section = item_sections[2].split("\n").map(&:strip).reject(&:empty?)
    modifiers = third_section

    forth_section = item_sections[3].split("\n").map(&:strip).reject(&:empty?)
    description = forth_section[0]

    { item_class: item_class[1], rarity: rarity[1], name: name, stack_size: stack_size, modifiers: modifiers,
      description: description }
  end
end
