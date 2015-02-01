#Numbers Game

start = Time.now
turns = 0
correct = 0
wrong = 0


while turns < 3
	turns += 1

	x = Random.rand(1..10)
	y = Random.rand(1..10)

	puts "#{x} + #{y} = "
	answer = gets.to_i

	if answer == x + y
		puts "Right!"
		correct += 1
	else
		puts "Wrong :("
		wrong += 1
	end
end

score = (correct.to_f/turns)*100
puts "Rights #{correct}; Wrongs #{wrong}; Score #{score}%"
duration = Time.now - start

puts "Total time #{duration} seconds"
puts "#{duration/turns} seconds per problem"
