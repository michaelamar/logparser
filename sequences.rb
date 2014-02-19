require "./sequence.rb"

class Sequences

	def initialize(pages)
		@sequences=[] #of sequence objects
		@pages=pages.pages
		@ending = 3					
		@increment = 2					
							
		#print @pages
		#print @pages.pages
		# count_sequences()
	end




	def first_method
		for i in (1..(@pages.length))	
			if (@pages[i].nil? == false)
				pages_list=@pages[i]
				second_method(pages_list)				
			end
		end
	end

	def second_method(list_of_pages)
		count=0
		range = 0
		while (count <= (list_of_pages.pages.length-@ending))						
	 		sequence =	list_of_pages.pages[range..(range+@increment)].join('-')	
			z=Sequence.new(sequence)								
			third_method(z)
			count=count+1													
			range = range+1
		end
	end

	def third_method(z)
		if @sequences.include? z			
	 		increment_counts(z)				
		else								
	 		z.increment_count				
			@sequences << z					
		end
	end

	def increment_counts(sequence)
		position=@sequences.index(sequence)
		x=@sequences[position]
		x.increment_count
	end




	def print_out_answer
	 	print @sequences.sort_by!{|x| x.count}
	end







end