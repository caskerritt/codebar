puts "how many turns would you like"
n = gets

if n.empty?
	n||= 0
else
	n = n.to_i
end

turns = 0
correct = 0
wrong = 0
start = Time.now
while turns < n
	turns = turns + 1

	x = Random.rand(1..10)
	y = Random.rand(1..10)

	print "#{x} + #{y} = "
	answer = gets.to_i

	if answer == x+y
		correct = correct +1
		puts "Right!"
	else
		wrong = wrong + 1
		puts "Wrong :("
	end
end
duration = (Time.now - start).round(2)
puts "Total time #{duration} seconds"
puts "#{(duration/turns).round(2)} seconds per problem"
score = correct*100/turns if n != 0
puts "Rights #{correct}; Wrongs #{wrong}; Score #{score}%"

puts "What is your name?"
name = gets.chomp

filename = "scores.txt"
file = File.open(filename, "a")
file.puts "#{name}, #{duration}"
file.close

scores = []

File.open('scores.txt', 'r') do |file|

	while entry = file.gets
	  scores << entry.split(",")[1].to_f
	end

end
puts scores.sort[0..4]