.PHONY: format lint test update

default: lint test build

format:
	isort .
	black .

lint:
	poetry run pre-commit run --all-files

test:
	poetry run pytest

build:
	poetry build

update:
	poetry update --lock
	nix flake update
