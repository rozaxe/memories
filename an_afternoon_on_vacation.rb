
begin
	arrival = Time.new 2015, 07, 19, 17, 28, 42
	
	###
	
	place = Lake.new
	place.water.temperature = :refreshing
	place.cicada = :far
	place.around << (rand 1400..1800).times.collect do Tree.new end
	
	people = (rand 150..200).times.collect do Person.new end
	
	###
	
	unknowns = people.sample 3
	
	unknowns.pop.cute = true
	
	kid = unknowns.pop
	kid.crying = true
	Thread.new do
		sleep 10.minutes
		kid.crying = false
	end
	
	unknowns.pop.firstname = $me.firstname
	
	###
	
	until Time.now > arrival + 20.minutes
		$me.swim
	end
	
	book = Book.new "The Melancholy Death of Oyster Boy & Other Stories", "Tim Burton"
	until Time.now > arrival + 2.hours
		$me.read book
	end
	
	book.status = :finished
	book.review = "Weird and tormented, a pure Tim Burton"
	
	###
	
	place.leave
end
