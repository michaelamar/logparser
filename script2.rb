

a=Hash.new
a={1 => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"], 2 => ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p"] , 3 => ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p"], 4 => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","k"], 5 => ["a", "b", "c"], 6 => ["a", "b", "c"], 7 => ["a", "b", "c"], 8 => ["a", "b", "c"], 9 => ["a", "b", "c"], 10 => ["a", "b", "c"], 11 => ["a", "b", "c"], 12 => ["a", "b", "c"], 13 => ["a", "b", "c"], 14 => ["a", "b", "c"]}
b=Array.new
c=String.new



# d.each do |x|
# 	for i in range..range+2
# 		c=d[i].to_a
# 		b<<c
# 	end
# 	range=range+1
# end
start=1
ending=3
hash={}

for i in (start..(a.length))
	s=a[i]
	x=0
	range=0


	while (x <= s.length-ending)
		pages =	s[range..range+2].join('-')

		
		if hash.has_key?(pages)
			hash[pages]=hash[pages] + 1
		else
			hash[pages] = 1
		end


		x=x+1
		
		range = range+1		
		end
end

puts hash.sort
# b<<c	



# b.each do |x|

# 	print x 

# end



