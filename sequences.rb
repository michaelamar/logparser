class Sequences

	def initialize(pages)
		@sequences={}
		@pages=pages
	end

	def count_sequences(ending, increment)
		for i in (1..(@pages.length))
			if (@pages[i].nil? == false)
				s=@pages[i]
				x=0
				range=0
				while (x <= (s.length-ending))
			 		pages =	s[range..(range+increment)].join('-')
					
					if @sequences.has_key?(pages)
			 	 		@sequences[pages]=@sequences[pages] + 1
			 		else
			 	 		@sequences[pages] = 1
			 		end
			 		x=x+1
					range = range+1		
				end
			end
		end
	end


	def print_out_answer
		puts @sequences.sort_by{|k,v| v}
	end







end