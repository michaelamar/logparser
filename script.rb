# break up the log file into consecutive groups of 3 page visits per user. Example: user 234 goes the ...then ProductDetail, Checkout, Homepage
# sort groups of 3 by number of occurances

# ex
# ListMania, ProductDetail, Checkout - 1 


file = File.open("logfile.txt", "r") #r for read w for write

h={}
page_visited = Array.new

file.each do |x|
		line = x.split
		if (line[0].to_i > 0)
			user=line[0].to_i
			page_visited= Array(line[1])
		end
		
		
	if ((h.has_key?(user)) && (user.nil? == false))
		h[user]<<page_visited 
	else
		h[user]=page_visited
	end
end








ending=3
hash={}


for i in (1..(h.length))
	s=h[i] 
	increment=2
		
	x=0
	range=0

	if (s.nil? == false)
	 	
	 
		while (x <= s.length-ending)
		 	pages =	s[range..(range+increment)].join('-')

			
			if hash.has_key?(pages)
		 		hash[pages]=hash[pages] + 1
		 	else
		 		hash[pages] = 1
		 	end


		 	x=x+1
			
			range = range+1		
		end
	end
end

puts hash.sort_by{|k,v| v}




























# for i in 1..(h.length)
#
# b=Array.new

# c=Array.new
# a=Array.new


#  	s=h[i]
# 	if (h[i].nil? == false)
# 		s.each do |x|
# 			if s.index(x)<s.length-2
#  				c<<x.to_s
#  				z = s.index(x)
#  				z=z+1
#  				c<<s[z].to_s
#  				z=z+1
#  				c<<s[z].to_s
#  			end
# 		end
# 	end

# end
# b<<c	

# b.each do |x|
# 	puts x
# end

# if (h[i].nil? == false)
	# 	s=h[i]
	# 	s.each do |x|
	# 		for i in range..range+2
	#  			c=d[i].to_a
	# 			b<<c
	# 		 end
	# 	 range=range+1
	# 	end
	# end

# puts b
# b.each do |x|
# 	puts x
# end





# user_array=Array.new


# for i in (0..h.count)
# 	user_array.push(h[i])
# end




















# puts array[]
# count = 0

# array2=Array.new

# count = 0

# # user_array.each do |x|
# # 	if (x.nil? == false)
# # 		x.to_a
		
# # 		x.each do |y|
# # 			array2<<y
# # 		end
# # 	end
# # 	count= count+1
# # end
# final_array=Array.new

# user_array.each do |x|
# 	a=Array.new([])
# 	count=0
	
# 	if (x.nil? == false)
# 		x.each do |y|
# 			if count<3
# 				a<<y
# 			end
# 			count=count+1
# 		end
# 	end
# 	final_array<<a
# end


# final_array.each do |x|
# 	puts x 
# 	puts "new"
# end
# # final_array.each do |x|
# # 	x.each do |y|
# # 		puts y
# # 		puts "new"
# # 	end
# # end
# # user_array.each do |x|
# # 	if (x.nil? == false)
# # 		x.to_a
# # 		for i in (00..2)
# # 			array2.push(x[i])
# # 		end
# # 	end
# # end

