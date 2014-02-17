class Log_parser

	def open(filename, permission=nil)
		if permission
			@file = File.open(filename, permission)	
		else
			@file = File.open(filename)
		end
	end

	def create_first_hash
		@first_hash=Hash.new
		

		@file.each do |linz|
			if linz
				line=linz.split
				if (line[0].to_i > 0)
					user=line[0].to_i
					page_visited = [line[1]]
				end

				if ((@first_hash.has_key?(user)) && (user.nil? == false))
					@first_hash[user]<<page_visited 
				else
					@first_hash[user]=page_visited
				end
			end
		end
	 return @first_hash
	end

	def create_second_hash(ending, increment)
		@second_hash={}
		for i in (1..(@first_hash.length))
			if (@first_hash[i].nil? == false)
				s=@first_hash[i]
				

				x=0
				range=0

				while (x <= (s.length-ending))
			 		pages =	s[range..(range+increment)].join('-')
					
					if @second_hash.has_key?(pages)
			 	 		@second_hash[pages]=@second_hash[pages] + 1
			 		else
			 	 		@second_hash[pages] = 1
			 		end
			 	
			 	x=x+1
				
				range = range+1		
			
				end
			end
		end
	end



	def print_out_answer
		puts @second_hash.sort_by{|k,v| v}
	end





end