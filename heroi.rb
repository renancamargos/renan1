require 'rubygems'
require 'watir-webdriver'
@browser = Watir::Browser.new :firefox

include Adoptionhelper

adotar 1
continuar_adotando
adotar 2
continuar_adotando
adotar 3
continuar_adotando
adotar 4
completar_adocao
preencher_cadastro('renan', 'rua pedra', 'renan@pedra.com', 'Check')
teste 'thank you for adopting a puppy!'
close

