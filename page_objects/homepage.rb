require 'selenium-webdriver'

class Homepage < Baseclass

	def initialize
		super 
		@homepage_url = "https://www.lolesports.com/en_US/"
	end

	def goto()
		setup(@homepage_url)
	end
	
end