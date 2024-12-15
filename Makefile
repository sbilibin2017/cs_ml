up:
	docker compose --env-file .env up --build

stop:
	docker compose --env-file .env stop

prune:
	docker container prune -f 
	docker volume prune -f
	docker volume rm cs_clickhouse_data

format:
	poetry run black app
	poetry run isort app
	poetry run autoflake app -r --remove-all-unused-imports --in-place --remove-unused-variables
	poetry run toml-sort pyproject.toml --in-place

lint:
	poetry run flake8 app
	poetry run mypy app
	