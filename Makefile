.PHONY: install upgrade

install:
	brew install --interactive ./aem-cli.rb

upgrade:
	brew upgrade --interactive ./aem-cli.rb
