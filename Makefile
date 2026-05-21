
.DEFAULT_GOAL := run

.PHONY: run
run:
	ansible-playbook talos.yml

.PHONY: fetch-image
fetch-image: # Fetch the Talos image using curl
	@echo "Posting roles/talos/files/bare-metal.yml to Talos Factory..."
	@id=$$(curl -sS -X POST 'https://factory.talos.dev/schematics' -H 'Content-Type: application/json' --data-binary @roles/talos/files/bare-metal.yml | jq -r '.id'); \
	printf 'talos_factory_image_url=%s\n' "factory.talos.dev/nocloud-installer/$$id"
