require "./sequence.rb"

class Sequences

	def initialize(pages)
		@sequences=[] #of sequence objects
		
		@pages=pages.pages
		#print @pages
		#print @pages.pages
		# count_sequences()
		@ending = 3
		@increment = 2

	end



	# def process_objects(pages_object)
	# 			# pages_object.pages.each do |user_page_object|
	# 			# 	puts user_page_object.pages
	# 			# end
	# end


	# def count_user_pages(user_pages)
	# 	@number_of_objects_to_process = user_pages.pages.length
	# end


	# def create_sequences(sequence, )
		
	# end


	# def check_if_sequence_exists_yet(sequence)
		
	# end

	def first_method
		for i in (1..(@pages.length))		#method 1
			if (@pages[i].nil? == false)	#method 1
				s=@pages[i]
				second_method(s)					#method 1
			end
		end
	end

	def second_method(list_of_pages)
		x=0
		range = 0
		while (x <= (list_of_pages.pages.length-@ending))						##method 2
	 		sequence =	list_of_pages.pages[range..(range+@increment)].join('-')	##method 2
			z=Sequence.new(sequence)								##method 2
			third_method(z)
			x=x+1													##method 2
			range = range+1
		end

	end

	def third_method(z)
		# for i in (1..(@pages.length))		#method 1
		# 	if (@pages[i].nil? == false)	#method 1
		# 		s=@pages[i]					#method 1
		# 		x=0							#method 1
		# 		range=0						#method 1
		# 		while (x <= (s.pages.length-@ending))						##method 2
		# 	 		sequence =	s.pages[range..(range+@increment)].join('-')	##method 2
		# 			z=Sequence.new(sequence)								##method 2
		 			if @sequences.include? z			##method 3
			 	 		increment_counts(z)				##method 3
			 		else								##method 3
			 	 		z.increment_count				##method 3
						@sequences << z					##method 3
			 		end 														##method 2	
				
										##method 1
										##method 1
	end

	def increment_counts(sequence)
		position=@sequences.index(sequence)
		x=@sequences[position]
		x.increment_count
	end

	# def find_length_of_user_pages(pages)
	# 	pages.length
	# end


	# def check_if_nil()
		
	# end




	def print_out_answer
	 	print @sequences.sort_by!{|x| x.count}

	end







end