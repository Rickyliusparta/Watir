require 'watir'
require 'selenium-webdriver'


browser = Watir::Browser.new :chrome

browser.goto 'https://www.bbc.co.uk'

puts browser.title

puts browser.status

sign_in = browser.link text: 'Sign in'



sign_in.exists?



sign_in.click

username = browser.text_field :id, 'username-input'
password = browser.text_field :id, 'password-input'

username.set 'rliu@spartaglobal.co'
password.set ''

sign_in = browser.button id: 'Sign in'
sign_in.button
sign_in.onsubmit

#sign in bbc (create account)
#wrap the log in page in a class. 