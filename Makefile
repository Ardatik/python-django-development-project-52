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
	gunicorn task_manager.task_manager.wsgi --log-file -
