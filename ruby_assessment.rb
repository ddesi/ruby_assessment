class Television
	attr_accessor:channel

	def initialize(channel)
		@channel = channel
		puts "Welcome! The TV is on! This is channel #{@channel}"
	end 


	def final_volume(volume)
		@volume = volume
		puts "Turn volume up or down!"
		final_volume = gets.chomp.to_i

		if final_volume > @volume
			puts "You turned the volume up"
		elsif final_volume < @volume
			puts "You turned the volume down"
		else
			puts "Turn volume up or down"
		end
	end

	def final_channel
		puts "Change the channel!"
		final_channel = gets.chomp.to_i

		if final_channel > @channel
			puts "You are now on channel #{final_channel}"
		elsif final_channel < @channel
			puts "You are now on channel #{final_channel}"
		end
	end

# MAX CHANNEL AND MAX VOLUME SUDO CODED COS IM REALLY SLOW
	# 	def max_channel
	# 	if @channel (1..100)
	# 		puts FUNCTION BELOW
	# 	else 
	# 		puts "invalid channel"
	# 	end
	# end


# this is not really working
	def select
		puts "Please select a channel or press [q] to turn the TV off!"
		choice = gets.chomp.to_i

		if choice != "q"
			undef select	
		else
		puts "You chose channel #{@channel}" 
		end
	end

				
end

television = Television.new(45)
puts television
puts television.select
# puts television.final_channel
# puts television.final_volume(5)



