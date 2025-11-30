.PHONY: build install collectstatic migrate render-start

build:
	./build.sh

install:
	uv pip install .

collectstatic:
	uv run python manage.py collectstatic --noinput

migrate:
	uv run python manage.py makemigrations
	uv run python manage.py migrate

render-start:
	uv run gunicorn task_manager.wsgi