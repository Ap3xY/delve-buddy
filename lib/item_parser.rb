# frozen_string_literal: true

#
## This class parses the raw item text from a Path of Exile item
class ItemParser
  def self.parse(raw_text)
    item_sections = raw_text.split('--------')

    first_section = item_sections[0].split("\n").map(&:strip).reject(&:empty?)
    item_class, rarity, name = first_section
    item_class = item_class.split(':').map(&:strip)
    rarity = rarity.split(':').map(&:strip)

    { item_class: item_class[1], rarity: rarity[1], name: name }
  end
end
