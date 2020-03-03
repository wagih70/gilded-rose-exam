class Quality
	
	def Aged_Brie item
		if item.quality < 50
		   item.quality = item.quality + 1
		end
		item.sell_in = item.sell_in - 1
		if item.sell_in < 0
			if item.quality < 50
			  item.quality = item.quality + 1
			end
		end
	end


	def Backstage_passes_to_a_TAFKAL80ETC_concert item
		if item.quality < 50
	        item.quality = item.quality + 1
	        if item.sell_in < 11
	            if item.quality < 50
	                item.quality = item.quality + 1
	            end
	        end
	        if item.sell_in < 6
	            if item.quality < 50
	                item.quality = item.quality + 1
	            end
	        end
	    end
	    item.sell_in = item.sell_in - 1
	    if item.sell_in < 0
			item.quality = item.quality - item.quality
		end
	end


	def Sulfuras__Hand_of_Ragnaros item
		item.quality = item.quality
		item.sell_in = item.sell_in
	end


	def Conjured item
		if item.quality > 0
			item.quality = item.quality - 1
			if item.quality > 0
				item.quality = item.quality - 1
			end
		end
		item.sell_in = item.sell_in - 1
		if item.sell_in < 0
			if item.quality > 0
			  item.quality = item.quality - 1
			  if item.quality > 0
			  	item.quality = item.quality - 1
			  end
			end
		end
	end

	def General item
		if item.quality > 0
			item.quality = item.quality - 1
		end
		item.sell_in = item.sell_in - 1
		if item.sell_in < 0
			if item.quality > 0
			  item.quality = item.quality - 1
			end
		end
	end
end
