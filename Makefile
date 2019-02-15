
help:
	@echo "Tasks in \033[1;32mflask-api\033[0m:"
	@echo "    install"
	@echo "        Demonstrates how to install the project."
	@echo "    lint"
	@echo "        Check style."
	@echo "    test"
	@echo "        Run pytest."
	@echo "    build"
	@echo "        Run build command."
	@echo "    clean"
	@echo "        Clean folders."
	@echo "    dev"
	@echo "        Run app in development."
	@echo "    run"
	@echo "        Run app in production."
	@echo ""
	@echo "By github/menziess"

install:
	export PIPENV_VENV_IN_PROJECT=1
	pipenv shell && pipenv install -d

lint:
	mypy . --ignore-missing-imports
	flake8 src/

test:
	pip install --editable .
	pytest --doctest-modules --junitxml=junit/test-results.xml

build:
	python setup.py bdist_wheel

clean:
	rm -rf .pytest_cache/ .mypy_cache/ junit/ build/ dist/ *.egg-info/ .coverage
	find . \( -name __pycache__ -o -name "*.pyc" \) -delete

dockerize:
	docker build --rm -f "Dockerfile" -t menziess/flask-api:latest .

publish:
	docker push menziess/flask-api:latest

dev:
	docker run --rm -it \
	-e FLASK_ENV=development \
	-p 5000:5000/tcp \
	-p 80:80 \
	-v $$(pwd):/app \
	menziess/flask-api:latest

run:
	docker run --rm -it \
	-e FLASK_ENV=production \
	-p 80:80 \
	-v $$(pwd):/app \
	menziess/flask-api:latest
