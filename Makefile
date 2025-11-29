build:
	./build.sh

install:
	uv pip install -r requirements.txt

collectstatic:
	uv run python manage.py collectstatic --noinput

migrate:
	uv run python manage.py makemigrations
	uv run python manage.py migrate

render-start:
	uv run gunicorn task_manager.wsgi
