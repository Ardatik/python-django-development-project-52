#!/usr/bin/env bash
set -e  # Прервать при первой ошибке

# Установка зависимостей из pyproject.toml
uv pip install .

# Компиляция переводов (для i18n)
uv run django-admin compilemessages

# Сборка статических файлов
uv run python manage.py collectstatic --noinput

# Применение миграций
uv run python manage.py migrate