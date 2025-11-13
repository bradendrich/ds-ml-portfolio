# Helpful shortcuts
.PHONY: setup lint format test

setup:
	python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt && pre-commit install

lint:
	flake8

format:
	black . && isort .

test:
	pytest -q || echo "No tests yet"
