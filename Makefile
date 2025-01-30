#! make
define load_env
    $(eval include .env)
    $(eval export)
endef

up-sentry:
	$(call load_env)
	@docker compose -f docker-compose.yml up -d

down-sentry:
	@docker compose -f docker-compose.yml down


up-traefik:
	$(call load_env)
	@docker compose -f docker-compose.traefik.yml up -d

down-traefik:
	@docker compose -f docker-compose.traefik.yml down
