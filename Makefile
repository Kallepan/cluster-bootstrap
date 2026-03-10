
.DEFAULT_GOAL := run

.PHONY: run
run:
	ansible-playbook talos.yml
