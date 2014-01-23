# break up the log file into consecutive groups of 3 page visits per user. Example: user 234 goes the ...then ProductDetail, Checkout, Homepage
# sort groups of 3 by number of occurances

# ex
# ListMania, ProductDetail, Checkout - 1 


file = File.open("logfile.txt", "r") #r for read w for write

h={}
y=Array.new
page_visited = Array.new

file.each do |x|
	line = x.split
	user=line[0].to_i
	page_visited= line[1].to_a
	
	if h.has_key?(user)
		h[user]<<page_visited 
	else
		h[user]=page_visited
	end
end

user_array=Array.new


for i in (0..h.count)
	user_array.push(h[i])
end
# puts array[]
# count = 0

array2=Array.new

count = 0

# user_array.each do |x|
# 	if (x.nil? == false)
# 		x.to_a
		
# 		x.each do |y|
# 			array2<<y
# 		end
# 	end
# 	count= count+1
# end
final_array=Array.new

user_array.each do |x|
	a=Array.new([])
	count=0
	
	if (x.nil? == false)
		x.each do |y|
			if count<3
				a<<y
			end
			count=count+1
		end
	end
	final_array<<a
end


final_array.each do |x|
	puts x 
	puts "new"
end
# final_array.each do |x|
# 	x.each do |y|
# 		puts y
# 		puts "new"
# 	end
# end
# user_array.each do |x|
# 	if (x.nil? == false)
# 		x.to_a
# 		for i in (00..2)
# 			array2.push(x[i])
# 		end
# 	end
# end

