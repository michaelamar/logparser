class UserPage
	def initialize(user, pages)
		@user = user
		@pages = [pages]
	end


	def <<(page)
		@pages << page
	end

	def ==(user_page)
		@user == user_page.user
	end

	def user
		@user
	end

	


end