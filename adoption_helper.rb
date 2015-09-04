
module AdoptionHelper



	def goto_the_puppie_adoption_site
	@browser = Watir::Browser.new :firefox
	@browser.goto 'http://puppies.herokuapp.com'
	end

	def adopt_puppy_number(num)
	@browser.button(:value=> 'View Details', :index => num - 1).click
	@browser.button(:value => 'Adopt Me!').click
	end

	def continue_adopting_puppies	
	@browser.button(:value => 'Adopt Another Puppy').click	
	end

	def complete_adoption
		@browser.button(:value => 'Complete the Adoption').click
	end
	def checkout_with(name, address, email, payment)
		@browser.text_field( :id =>'order_name').set(name)
		@browser.textarea( :id =>'order_address').set(address)
		@browser.text_field( :id =>'order_email').set(email)
		@browser.select_list( :id =>'order_pay_type').select(payment)
		@browser.button(:name =>'commit').click
	end

	def verify_psge_contents(text)

		fail unless @browser.text.include?(text)
			
	end


end
