# hello world python

scaffolding for super simple python app.  To run tests, `make deps test`.  

To run, `make deps run`.

## design notes

for simplicity, execution deps, IDE deps, and test deps are combined into a single `make deps` that runs an unpinned `pip install`.

## initial system setup (macos)

```
brew install pyenv
pyenv install 3.7.7
pyenv global 3.7.7
```

## installation
```
make deps
```

## running shieh/main.py
```
make run
```

## running tests
```
make test
```

