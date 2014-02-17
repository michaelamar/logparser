class Sequences

	def initialize(pages)
		@sequences={}
		@pages=pages
	end

	def count_sequences(ending, increment)
		for i in (1..(@pages.pages.length))
			if (@pages.pages[i].nil? == false)
				s=@pages.pages[i]
				x=0
				range=0
				while (x <= (s.pages.length-ending))
			 		pages =	s.pages[range..(range+increment)].join('-')
					
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


	# def find_length_of_user_pages(pages)
	# 	pages.length
	# end


	# def check_if_nil()
		
	# end




	def print_out_answer
		puts @sequences.sort_by{|k,v| v}
	end







end