require 'rubygems'
require 'watir-webdriver'
require_relative 'adoption_helper'

include AdoptionHelper


goto_the_puppie_adoption_site
adopt_puppy_number(1)
continue_adopting_puppies
adopt_puppy_number(2)
continue_adopting_puppies
adopt_puppy_number(3)
complete_adoption
checkout_with('thais', 'Rua jade', 'bolita@fofa.com', 'Check')
verify_psge_contents('Thank you for adopting a puppy!')







