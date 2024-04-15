all: setup

.PHONY: setup
setup:
	@ansible-galaxy install -r requirements.yml
	
.PHONY: deploy
deploy:
	@ansible-playbook main.yml --ask-become-pass