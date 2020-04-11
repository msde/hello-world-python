venv:
	python -m venv build

deps:  venv
	( \
	  . build/bin/activate; \
	  pip install --upgrade black pip pytest; \
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
	  python shieh/main.py; \
	)

clean:
	rm -r build
