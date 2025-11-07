class DelveBuddy
  attr_reader :coolness

  def initialize
    @coolness = 11
  end
end

puts "Coolness: #{DelveBuddy.new.coolness}/10"
