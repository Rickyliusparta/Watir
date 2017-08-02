require 'watir'
# require 'selenium-webdriver'

class Browser

	def initialize

		@browser = Watir::Browser.new :chrome
		@browser.goto 'https://www.bbc.co.uk'
		puts @browser.title

	end
	# puts browser.status
	def sign_in 
		sign_in = @browser.link text: 'Sign in'
		sign_in.exists?
		sign_in.click
	end
	
	def login
		sign_in
		username = @browser.text_field :id, 'username-input'
		password = @browser.text_field :id, 'password-input'

		username.set 'rliu@spartaglobal.co'
		password.set 'SDET82017'

		login = @browser.button id: 'submit-button'
		login.exists?
		login.click
		@browser.driver.manage.timeouts.implicit_wait = 3
	end
#sign in bbc (create account)
#wrap the log in page in a class.
end

user = Browser.new
user.login