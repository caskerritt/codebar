class PersonalChef
	def make_toast(colour)
		if colour.nil?
			puts "How am I supposed to make nothingness toast?"
		else
			puts "Making your toast #{colour}"
		end
		return self
	end

	def make_milkshake(flavour)
		puts "Milkshake is #{flavour}"
		return self
	end

	def make_eggs(quantity)
		quantity.times do
			puts "Making an egg"
		end
		puts "I'm done"
		return self
	end

	def good_morning
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday

		puts "happy #{today}! It is the #{day_of_year} day of the year"
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "we'll have #{meal}..."
		end

		all_meals = meals.join ", "
		puts "In summary: #{all_meals}"
	end

	def inventory 
		produce = {apples: 3, oranges: 1, carrots: 12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge"
		end
	end

	def water_status(minutes)
		if minutes < 7
			puts "the water is not boiling yet."
		elsif minutes == 7
			puts "it's just barely boiling"
		elsif minutes == 8
			puts "It's boiling!"
		else 
			puts "Hot! Hot! Hot!"
		end
		return self
	end

	def countdown(counter)
		until counter == 0
			puts "The counter is #{counter}"
			counter = counter-1
		end
		return self
	end
end





class Butler
	def open_front_door 
		puts "opening the door"
	end

	def open_door(type)
		puts "opening the #{type} door"
	end
end