class Sequence

	def initialize(pages)
		@pages=pages
		@count=0
	end

	def pages
		@pages
	end

	def count
		@count
	end

	def increment_count
		@count=@count+1
	end

	def ==(pages)
		@pages == pages.pages
	end	


end