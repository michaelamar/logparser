range=0

a=Hash.new
a={1 => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","k"]} #, 2 => ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p"] }
b=Array.new
c=Array.new
counter=0

# d.each do |x|
# 	for i in range..range+2
# 		c=d[i].to_a
# 		b<<c
# 	end
# 	range=range+1
# end


for i in (1..(a.length))
	s=a[i]
	s.each do |x|
		if s.index(x)<s.length-2
 				c<<x.to_s
 				z = s.index(x)
 				z=z+1
 				c<<s[z].to_s
 				z=z+1
 				c<<s[z].to_s
 		end
	
	end
b<<c	
end



	



