module GameHelper
	def drinks_level(level)
		if(level == "three")
			return "Spirits (40% +)"
		elsif(level == "two")
			return "Beer"
		elsif(level == "one")
			return "Wine"
		end
	end
	def drinks_image(level)
		if(level == "three")
			return "http://www.gosupermarkets.com/media/catalog/category/Alcohol-44_498x416_.jpg"
		elsif(level == "two")
			return "http://www.edgewoodyachtclub.com/wp-content/uploads/2016/01/beer.gif"
		elsif(level == "one")
			return "http://theozsafari.com.au/wp-content/uploads/2015/04/wine-glasses.jpg"
		end
	end
end
