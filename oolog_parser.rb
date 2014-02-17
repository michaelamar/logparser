require "./user_pages.rb"
require "./sequences.rb"


class Log_parser

	def open(filename, permission=nil)
		if permission
			@file = File.open(filename, permission)	
		else
			@file = File.open(filename)
		end
	end


	def create_first_hash
		@user_pages=UserPages.new(@file)
	end
	

	
	def create_second_hash
		@pages=Sequences.new(@user_pages)
		@pages.count_sequences(3,2)
	end


	def print_out_answer
		@pages.print_out_answer
	end


end



l=Log_parser.new
l.open("logfile.txt", "r")
l.create_first_hash
# l.create_second_hash
# l.print_out_answer









