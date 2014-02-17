require "./user_page"

class UserPages


	def initialize(file)
		@pages = [] #of UserPage instances
		process_file(file)
	end

	def pages
		@pages
	end


	private

		def process_file(file)
			file.each do |lines|
				line=lines.split
				if (line[0].to_i > 0)
					user=UserPage.new(line[0], line[1])
					process_user(user, line[1])
				end
			end
		end

		def process_user(user, page)
			if @pages.include? user
				add_page_to_user(user, page)
			else
				@pages << user
			end
		end

		def add_page_to_user(user, page_to_add)
			position=@pages.index(user)
			@pages[position]<<page_to_add
		end

		

	



	# def build_pages
	# 	@file.each do |linz|
	# 		if linz
	# 			line=linz.split
	# 			if (line[0].to_i > 0)
	# 				user=line[0].to_i
	# 				page_visited = [line[1]]
	# 			end

	# 			if (((@pages.has_key?(user)) && (user.nil? == false))
	# 				@pages[user]<<page_visited 
	# 			else
	# 				@pages[user]=page_visited
	# 			end
	# 		end
	# 	end
	#  return @pages
	# end

end