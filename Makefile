#!make
ifneq (,$(wildcard ./.env))
	include .env
	export
endif

REGISTRY_OWNER:=fazenda
PROJECT_NAME:=weekly-exercises-py
PROJECT_TAG:=latest

run:
	@docker-compose up --build --remove-orphans
