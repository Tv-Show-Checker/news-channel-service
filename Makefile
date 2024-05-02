runserver:
	python -m manage runserver

makemigrations:
	python -m manage makemigrations

migrate:
	python -m manage migrate

shell:
	python -m manage shell

install:
	pip install --upgrade pip && pip install -r requirements.txt

showmigrations:
	python -m manage.py showmigrations

sqlmigrate:
	python -m manage sqlmigrate $(app) $(migration)

createsuperuser:
	python -m manage createsuperuser

rollback:
	python -m manage migrate $(app) $(migration)

startapp:
	cd apps && django-admin startapp $(app)

test:
	python -m pytest -n auto

test-class:
	python -m pytest -k $(class) -n auto

testprint:
	python -m pytest -s -k $(class)

test-cov-detail:
	python -m pytest --cov-report term-missing --cov

collectstatic:
	python -m manage collectstatic

spectacular:
	python -m manage spectacular --file schema.yml