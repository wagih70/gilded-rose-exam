require_relative 'quality'

class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      if item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert" && item.name != "Sulfuras, Hand of Ragnaros" && item.name != "Conjured"
        quality = Quality.new
        quality.General(item)
      else  
        item_name = item.name
        item_name = item_name.tr(' ,','_')
        quality = Quality.new
        quality.send(item_name,item)
      end
    end
  end
end
