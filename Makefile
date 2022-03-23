.PHONY: all

all: lint preview docs

lint:
	helm lint -f values.yaml

preview:
	./preview.sh .

docs:
	helm-docs --template-files=README.md.gotmpl --template-files=CHANGELOG.md.gotmpl