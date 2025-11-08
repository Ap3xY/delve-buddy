class PriceFetcher
  def fetch(item)
    data = {
      'Tabula Rasa' => 6
    }

    data[item] || 'Unknown item'
  end
end
