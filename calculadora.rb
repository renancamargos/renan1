require 'rubygems'
require 'watir-webdriver'
@browser = Watir::Browser.new :firefox


	@browser.goto "file:///C:/Users/Thais/Documents/Calc%20Test/index.html"
	@browser.button(:name => '1').click 
	@browser.button(:name => '+').click 