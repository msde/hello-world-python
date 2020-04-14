venv:
	python -m venv build

deps:  venv
	( \
	  . build/bin/activate; \
	  pip install --upgrade black flake8 freezegun mypy pinject pip pytest; \
	)

.PHONY: lint
lint:
	( \
	  . build/bin/activate; \
	  flake8 shieh test; \
	  mypy shieh test; \
	)

.PHONY: test
test:
	( \
	  . build/bin/activate; \
	  pytest test; \
	)

.PHONY: run
run:
	( \
	  . build/bin/activate; \
	  python main.py; \
	)

clean:
	rm -r build .mypy_cache .pytest_cache
	find . -name __pycache__  -exec rm -r {} +

tarball: clean
	rm cloudkitchen-interview-mshieh.tgz
	tar czvf cloudkitchen-interview-mshieh.tgz *
